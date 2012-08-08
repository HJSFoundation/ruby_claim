module RubyClaim::Outputters
  class PDF
    def initialize(claim)
      @claim = claim
    end

    def draw(filename = nil)
      options = { :page_size => 'LETTER',
                  :page_layout => :portrait,
                  :margin => 0
                }

      @pdf = Prawn::Document.new(options)

      unless @claim.hide_background
        @pdf.image File.join(File.dirname(__FILE__), "../ext/cms_1500.jpg"), :scale => 0.36
      end

      @claim.carrier_city_state_zip = @claim.carrier_city + ' ' + @claim.carrier_state + ' ' + @claim.carrier_zip

      @claim.claim_fields.values.each do |field_name, value|
        field = @claim.claim_fields.get_field(field_name)

        if field.bounding?
          mark_field(value, field)
        else
          @pdf.draw_text value, :at => [field.left, field.bottom]
        end
      end

      @claim.diagnosis_codes.each do |dc|
        field = @claim.claim_fields.get_field(:diagnosis)
        val1 = dc.value.split(".").first
        val2 = val1.length > 3 ?  dc.value.split(".").last.rjust(3) : dc.value.split(".").last # pad 1 char left on value 2 if val1 diag_code is 4 digits

        @pdf.draw_text val1, :at => [ field.options[dc.id][0][:left], (792.0 - field.options[dc.id][0][:top] - field.height) ]
        @pdf.draw_text val2, :at => [ field.options[dc.id][1][:left], (792.0 - field.options[dc.id][1][:top] - field.height) ]
      end

      @claim.services.each_with_index do |service_fields,i|
        next if service_fields.values.nil?

        service_fields.values.each do |field_name, value|
          field     = service_fields.get_field(field_name)
          field.top = service_fields.row_tops[i]

          if field.bounding?
            mark_field(value,field)
          else
            @pdf.draw_text value, :at => [field.left, bottom]
          end
        end
      end

      @pdf.render_file(filename) if filename

      @pdf
    end

    def mark_field(value,field)
      case field.type
      when :boolean
        mark_boolean(value,field)
      when :string
        mark_string(value,field)
      when :checkbox
        mark_checkbox(value,field)
      when :date
        mark_date(value,field)
      when :phone
        mark_phone(value,field)
      when :money
        mark_money(value,field)
      end
    end

    def mark_boolean(value,field)
      left = value == true ? field.options[:yes] : field.options[:no]

      @pdf.draw_text 'X', :at => [left, field.bottom]
    end

    def mark_string(value,field)
      @pdf.draw_text value, :at => [field.left, field.bottom]
    end

    def mark_checkbox(value,field)
      left = field.options.nil? ? field.left : field.options[value]

      @pdf.draw_text 'X', :at => [left, field.bottom]
    end

    def mark_date(value,field)
      date = Date.parse(value)
      year = field.options[:full_century] == true ? "%Y" : "%y"

      @pdf.draw_text date.strftime("%m"), :at => [field.options[:month] ,field.bottom]
      @pdf.draw_text date.strftime("%d"), :at => [field.options[:day], field.bottom]
      @pdf.draw_text date.strftime(year), :at => [field.options[:year], field.bottom]
    end

    def mark_phone(value,field)
      area_code, number = value[0,3], value[3,7]

      field.options.each do |section, (left, width)|
        val = section == :area_code ? area_code : number[0,3] + '-' + number[3,4]
        @pdf.draw_text val, :at => [left, field.bottom]
      end
    end

    def mark_money(value,field)
      padding = (field.options[:dollars].last / 5)         # 6 pt per char
      dollars = value.to_s.split(".").first.rjust(padding)
      cents   = value.round(2).to_s.split(".").last.rjust(2,"0")

      @pdf.draw_text dollars, :at => [field.options[:dollars].first, field.bottom]
      @pdf.draw_text cents,   :at => [field.options[:cents].first, field.bottom]
    end
  end
end
