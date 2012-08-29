module RubyClaim
  class Claim
    attr_reader :claim_fields, :services, :hide_background, :diagnosis_codes

    def initialize(options = {})
      @claim_fields    = RubyClaim::Definition::ClaimFields.new
      @services        = []
      @hide_background = !!options[:hide_background]
      @diagnosis_codes = []
    end

    def build_service
      @services << RubyClaim::Definition::ServiceFields.new

      yield @services.last if block_given?
      @services.last
    end

    def set_diagnosis_code(id, value)
      @diagnosis_codes << RubyClaim::DiagnosisCode.new(id,value)
    end

    def to_pdf(options = {})
      filename       = options.delete(:filename)
      prawn_document = options.delete(:prawn_document)

      RubyClaim::Outputters::PDF.new(self).draw(:filename => filename, :prawn_document => prawn_document)
    end

    def to_json(filename = nil)
      RubyClaim::Outputters::JSON.new(self).draw(filename)
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
