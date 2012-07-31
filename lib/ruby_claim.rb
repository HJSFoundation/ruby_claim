require 'require_relative'
require 'prawn/measurement_extensions'
require 'prawn'
require 'pry'


require_relative "ruby_claim/version"
require_relative "ruby_claim/field"
require_relative "ruby_claim/definitions/base"
require_relative "ruby_claim/definitions/claim_fields"
require_relative "ruby_claim/definitions/service_fields"
require_relative "ruby_claim/claim"


module RubyClaim
  c = RubyClaim::Claim.new
  c.draw
end
