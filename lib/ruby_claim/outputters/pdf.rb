module RubyClaim::Outputters
  class PDF
    def initialize(claim)
      @claim = claim
    end

    def draw(options = {})
      filename       = options.delete(:filename)
      prawn_document = options.delete(:prawn_document)

      @pdf =  if prawn_document
                prawn_document.start_new_page
                prawn_document
              else
                Prawn::Document.new(:page_size => 'LETTER',
                                    :page_layout => :portrait,
                                    :margin => 0)
              end

      draw_claim
      draw_services

      @pdf.render_file(filename) if filename

      @pdf
    end

    def draw_claim
      unless @claim.hide_background
        @pdf.image File.join(File.dirname(__FILE__), "../ext/cms_1500.jpg"), :scale => 0.36
      end

      @claim.carrier_city_state_zip = @claim.carrier_city.to_s + ' ' + @claim.carrier_state.to_s + ' ' + @claim.carrier_zip.to_s
      @claim.billing_provider_city_state_zip = @claim.billing_provider_city.to_s + ' ' + @claim.billing_provider_state.to_s + ' ' + @claim.billing_provider_zip.to_s
      @claim.service_facility_city_state_zip = @claim.service_facility_city.to_s + ' ' + @claim.service_facility_state.to_s + ' ' + @claim.service_facility_zip.to_s

      @claim.claim_fields.values.each do |field_name, value|
        next if [:total_charge, :amount_paid, :balance_due].include?(field_name)

        field = @claim.claim_fields.get_field(field_name)
        next if value.nil? || value == ""

        if field.bounding?
          mark_field(value, field)
        else
          @pdf.draw_text value, :at => [field.left, field.bottom]
        end
      end

      @claim.diagnosis_codes.each do |dc|
        next if dc.value.nil?

        field = @claim.claim_fields.get_field(:diagnosis)
        val1 = dc.value.split(".").first
        val2 = val1.length > 3 ?  dc.value.split(".").last.rjust(3) : dc.value.split(".").last # pad 1 char left on value 2 if val1 diag_code is 4 digits

        @pdf.draw_text val1, :at => [ field.options[dc.id][0][:left], (792.0 - field.options[dc.id][0][:top] - field.height) ]
        @pdf.draw_text val2, :at => [ field.options[dc.id][1][:left], (792.0 - field.options[dc.id][1][:top] - field.height) ]
      end
    end

    def draw_services
      pages = 1
      @claim.services.each_slice(6) do |page_services|
        if pages > 1
          @pdf.start_new_page
          draw_claim
        end

        page_services.each_with_index do |service_fields,i|
          next if service_fields.values.nil?

          draw_service(service_fields, i)
        end

        draw_service_totals(page_services)
        pages += 1
      end
    end

    def draw_service(service_fields, index)
      service_fields.values.each do |field_name, value|
        field     = service_fields.get_field(field_name)
        field.top = service_fields.row_tops[index]

        if field.bounding?
          mark_field(value,field)
        else
          @pdf.draw_text value, :at => [field.left, bottom]
        end
      end
    end

    def draw_service_totals(services)
      total_charge = services.inject(0.0) {|m,s| m += s.charges; m}
      total_paid   = services.inject(0.0) {|m,s| m += s.service_paid_amount; m}

      mark_field(total_charge,              @claim.claim_fields.get_field(:total_charge))
      mark_field(total_paid,                @claim.claim_fields.get_field(:amount_paid))
      mark_field(total_charge - total_paid, @claim.claim_fields.get_field(:balance_due))
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
      @pdf.draw_text value, :at => [field.left, field.bottom], :size => field.size.nil? ? 11 : field.size
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
