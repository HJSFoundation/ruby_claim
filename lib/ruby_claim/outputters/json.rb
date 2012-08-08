module RubyClaim::Outputters
  class JSON
    def initialize(claim)
      @claim = claim
    end

    def draw(filename = nil)
      output                   = @claim.values
      output[:services]        = @claim.services.map(&:values)
      output[:diagnosis_codes] = @claim.diagnosis_codes.map{|d| d.value }

      [:carrier_city, :carrier_state, :carrier_zip].each do |field|
        output[field]          = @claim.send(field)
      end

      output.delete(:diagnosis)

      if filename
        File.open(filename.to_s, "w") { |io|  io.write output.to_json}
      end

      output.to_json
    end
  end
end
