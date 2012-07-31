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
  c = RubyClaim::Claim.new(:hide_background => false)

  c.medicare          = 'X'
  c.medicaid          = 'X'
  c.tricare_champus   = 'X'
  c.champva           = 'X'
  c.group_health_plan = 'X'
  c.black_lung        = 'X'
  c.carrier_other     = 'X'
  c.insured_id_number = 'insured_id_number'
  c.insured_name      = 'insured_name'
  c.patient_name      = 'patient_name'

  c.draw(File.join(File.dirname(__FILE__), "ruby_claim/ext/sample.pdf"))
end
