module RubyClaim
  class Claim

    def initialize(options = {})
      @claim_fields    = RubyClaim::Definition::ClaimFields.new
      @services        = []
      @hide_background = !!options[:hide_background]
      @diagnosis_codes = []

      Struct.new "DiagnosisCode", :id, :value
    end

    def build_service
      @services << RubyClaim::Definition::ServiceFields.new

      yield @services.last if block_given?
      @services.last
    end

    def diagnosis_codes(id, value)
      @diagnosis_codes << Struct::DiagnosisCode.new(id,value)
    end

    def draw(filename)
      options = { :page_size => 'LETTER',
                  :page_layout => :portrait,
                  :margin => 0
                }

      Prawn::Document.generate(filename, options) do |pdf|
        unless @hide_background
          pdf.image File.join(File.dirname(__FILE__), "ext/cms_1500.jpg"), :scale => 0.36
        end

        @claim_fields.values.each do |field_name, value|
          field = @claim_fields.get_field(field_name)

          if field.bounding?
            mark_field(value,pdf,field)
          else
            pdf.draw_text value, :at => [field.left, field.bottom]
          end
        end

        @diagnosis_codes.each do |dc|
          field = @claim_fields.get_field(:diagnosis)
          val1 = dc.value.split(".").first
          val2 = val1.length > 3 ?  dc.value.split(".").last.rjust(3) : dc.value.split(".").last # pad 1 char left on value 2 if val1 diag_code is 4 digits

          pdf.draw_text val1, :at => [ field.options[dc.id][0][:left], (792.0 - field.options[dc.id][0][:top] - field.height) ]
          pdf.draw_text val2, :at => [ field.options[dc.id][1][:left], (792.0 - field.options[dc.id][1][:top] - field.height) ]
        end

        @services.each_with_index do |service_fields,i|
          next if service_fields.values.nil?

          service_fields.values.each do |field_name, value|
            field     = service_fields.get_field(field_name)
            field.top = service_fields.row_tops[i]

            if field.bounding?
              mark_field(value,pdf,field)
            else
              pdf.draw_text value, :at => [field.left, bottom]
            end
          end
        end
      end

     # `open #{filename}`
    end

    def mark_field(value,pdf,field)
      case field.type
      when :boolean
        mark_boolean(value,pdf,field)
      when :string
        mark_string(value,pdf,field)
      when :checkbox
        mark_checkbox(value,pdf,field)
      when :date
        mark_date(value,pdf,field)
      when :phone
        mark_phone(value,pdf,field)
      when :money
        mark_money(value,pdf,field)
      end
    end

    def mark_boolean(value,pdf,field)
      left = value == true ? field.options[:yes] : field.options[:no]

      pdf.draw_text 'X', :at => [left, field.bottom]
    end

    def mark_string(value,pdf,field)
      pdf.draw_text value, :at => [field.left, field.bottom]
    end

    def mark_checkbox(value,pdf,field)
      left = field.options.nil? ? field.left : field.options[value]

      pdf.draw_text 'X', :at => [left, field.bottom]
    end

    def mark_date(value,pdf,field)
      date = Date.parse(value)
      year = field.options[:full_century] == true ? "%Y" : "%y"

      pdf.draw_text date.strftime("%m"), :at => [field.options[:month] ,field.bottom]
      pdf.draw_text date.strftime("%d"), :at => [field.options[:day], field.bottom]
      pdf.draw_text date.strftime(year), :at => [field.options[:year], field.bottom]
    end

    def mark_phone(value,pdf,field)
      area_code, number = value[0,3], value[3,7]

      field.options.each do |section, (left,width)|
        val = section == :area_code ? area_code : number[0,3] + '-' + number[3,4]
        pdf.draw_text val, :at => [left, field.bottom]
      end
    end

    def mark_money(value,pdf,field)
      padding = (field.options[:dollars].last / 5)         # 6 pt per char
      dollars = value.to_s.split(".").first.rjust(padding)
      cents   = value.round(2).to_s.split(".").last.rjust(2,"0")

      pdf.draw_text dollars, :at => [field.options[:dollars].first, field.bottom]
      pdf.draw_text cents,   :at => [field.options[:cents].first, field.bottom]
    end

    def method_missing(method_name, *args)
      @claim_fields.send(method_name, *args)
    end


    # Testing service placement
    def time_rand from = 0.0, to = Time.now
      Time.at(from + rand * (to.to_f - from.to_f)).strftime("%Y-%m-%d")
    end
  end
end
