require 'require_relative'
require 'prawn/measurement_extensions'
require 'prawn'
require 'date'
require 'pry'


require_relative "ruby_claim/version"
require_relative "ruby_claim/field"
require_relative "ruby_claim/definitions/base"
require_relative "ruby_claim/definitions/claim_fields"
require_relative "ruby_claim/definitions/service_fields"
require_relative "ruby_claim/claim"


module RubyClaim
  c = RubyClaim::Claim.new(:hide_background => false)

  c.insurance_type                         = :medicare

  c.insured_id_number                      = 'insured_id_number'
  c.insured_name                           = 'insured_name'
  c.insured_address                        = 'insured_address'
  c.insured_city                           = 'Ocala'
  c.insured_state                          = 'FL'
  c.insured_zip                            = '34476'
  c.insured_phone                          = '3525555555'
  c.insured_employer_or_school_name        = 'University of Central London'
  c.is_there_another_health_benefit_plan   = false
  c.insured_policy_or_group_number         = '12341251'
  c.insured_date_of_birth                  = '1947-11-04'
  c.insured_sex                            = :male
  c.insurance_plan_or_program_name         = "Blue Cross Bad Wolf"

  c.other_insured_name                     = 'Flinstone, Frederick, C'
  c.other_insured_sex                      = :male
  c.other_insured_date_of_birth            = '1955-10-31'
  c.other_insured_policy_or_group_number   = '123451'
  c.employer_name_or_school_name           = 'University Of Florida'

  c.patient_name                           = 'Jane Doe'
  c.patient_address                        = 'patient_address'
  c.patient_date_of_birth                  = '1960-07-21'
  c.patient_sex                            = :female
  c.patient_city                           = 'Ocala'
  c.patient_state                          = 'FL'
  c.patient_zip                            = '34476'
  c.patient_phone                          = '3525555555'
  c.patient_marital_status                 = :single
  c.patient_employment_status              = :full_time_student
  c.patient_relationship_to_insured        = :self
  c.patient_or_authorized_signature        = "Signature on File"
  c.patient_or_authorized_signature_date   = "2012-08-02"  # Field type is string, not date!
  c.insured_or_authorized_signature        = "Signature on File"

  c.condition_related_to_other_accident    = true
  c.condition_related_to_employment        = false
  c.condition_related_to_auto_accident     = false


  c.draw(File.join(File.dirname(__FILE__), "ruby_claim/ext/sample.pdf"))
end
