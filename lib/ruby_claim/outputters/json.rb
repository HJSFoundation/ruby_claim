module RubyClaim::Outputters
  class JSON
    def initialize(claim)
      @claim = claim
    end

    def claim_hash
      return @claim_hash if @claim_hash

      @claim_hash                   = @claim.values
      @claim_hash[:services]        = @claim.services.map(&:values)
      @claim_hash[:diagnosis_codes] = @claim.diagnosis_codes.map{|d| d.value }

      [:carrier_city, :carrier_state, :carrier_zip].each do |field|
        @claim_hash[field]          = @claim.send(field)
      end

      @claim_hash.delete(:diagnosis)

      if filename
        File.open(filename.to_s, "w") { |io|  io.write @claim_hash.to_json}
      end

      @claim_hash
    end

    def draw(filename = nil)
      if filename
        File.open(filename.to_s, "w") { |io|  io.write claim_hash.to_json}
      end

      claim_hash.to_json
    end
  end
end
