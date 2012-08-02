module RubyClaim
  class Claim

    def initialize(options = {})
      @claim_fields    = RubyClaim::Definition::ClaimFields.new
      @services        = []
      @hide_background = !!options[:hide_background]
    end

    def build_service
      @services << RubyClaim::Definition::ServiceFields.new

      yield @services.last if block_given?
      @services.last
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

        @services.each do |service_fields|
          service_fields.values.each do |field_name, value|
            field = service_fields.get_field(field_name)

            if field.bounding?
              mark_field(value,pdf,field)
            else
              pdf.draw_text value, :at => [field.left, field.bottom]
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
      field.options.each do |mdy, left_coordinate|
        pdf.draw_text date.send(mdy).to_s.rjust(2,"0")[-2,2], :at => [left_coordinate, field.bottom]
      end
    end

    def mark_phone(value,pdf,field)
      area_code, number = value[0,3], value[3,7]

      field.options.each do |section, (left, width)|
        val = section == :area_code ? area_code : number[0,3] + '-' + number[3,4]
        pdf.draw_text val, :at => [left, field.bottom]
      end
    end

    def method_missing(method_name, *args)
      @claim_fields.send(method_name, *args)
    end
  end
end
