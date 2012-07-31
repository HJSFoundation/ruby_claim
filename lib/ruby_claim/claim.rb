module RubyClaim
  class Claim

    def initialize
      @claim_fields = RubyClaim::Definition::ClaimFields.new
      @services     = []
    end

    def build_service
      @services << RubyClaim::Definition::ServiceFields.new

      yield @services.last if block_given?
      @services.last
    end

    def draw
      options = { :page_size => [2560,3312],
                  :page_layout => :portrait,
                  :margin => 0,
                  :background => "/Users/jjackson/Desktop/cropped_cms_1500.jpg" }

      Prawn::Document.generate("/Users/jjackson/Desktop/prawn_test.pdf", options) do
      end

      `open /Users/jjackson/Desktop/prawn_test.pdf`
    end

    def method_missing(method_name, *args)
      @claim_fields.send(method_name, *args)
    end
  end
end