module RubyClaim::Outputters
  class JSON
    require 'json'

    def initialize(claim)
      @claim = claim
    end

    def draw
      output = @claim.values
      output[:services] = @claim.services.map(&:values)

      output.to_json
    end
  end
end
