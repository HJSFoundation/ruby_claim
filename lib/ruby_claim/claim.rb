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
        #image = [1700,2200] | LETTER = 612x792

        unless @hide_background
          pdf.image File.join(File.dirname(__FILE__), "ext/cms_1500.jpg"), :scale => 0.36
        end

        @claim_fields.values.each do |field_name, value|
          field = @claim_fields.get_field(field_name)

          pdf.draw_text value, :at => [field.left, field.bottom]
        end

        @services.each do |service_fields|
          service_fields.values.each do |field_name, value|
            field = service_fields.get_field(field_name)

            pdf.draw_text value, :at => [field.left, field.bottom]
          end
        end
      end

      `open #{filename}`
    end

    def method_missing(method_name, *args)
      @claim_fields.send(method_name, *args)
    end
  end
end
