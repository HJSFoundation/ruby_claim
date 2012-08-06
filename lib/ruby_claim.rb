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

  c.insurance_type                                        = :medicare

  c.insured_id_number                                     = 'insured_id_number'
  c.insured_name                                          = 'insured_name'
  c.insured_address                                       = 'insured_address'
  c.insured_city                                          = 'Ocala'
  c.insured_state                                         = 'FL'
  c.insured_zip                                           = '34476'
  c.insured_phone                                         = '3525555555'
  c.insured_employer_or_school_name                       = 'University of Central London'
  c.is_there_another_health_benefit_plan                  = false
  c.insured_policy_or_group_number                        = '12341251'
  c.insured_date_of_birth                                 = '1947-11-04'
  c.insured_sex                                           = :male
  c.insurance_plan_or_program_name                        = "Blue Cross Bad Wolf"

  c.other_insured_name                                    = 'Flinstone, Frederick, C'
  c.other_insured_sex                                     = :male
  c.other_insured_date_of_birth                           = '1955-10-31'
  c.other_insured_policy_or_group_number                  = '123451'
  c.employer_name_or_school_name                          = 'University Of Florida'

  c.patient_name                                          = 'Jane Doe'
  c.patient_address                                       = 'patient_address'
  c.patient_date_of_birth                                 = '1960-07-21'
  c.patient_sex                                           = :female
  c.patient_city                                          = 'Ocala'
  c.patient_state                                         = 'FL'
  c.patient_zip                                           = '34476'
  c.patient_phone                                         = '3525555555'
  c.patient_marital_status                                = :single
  c.patient_employment_status                             = :full_time_student
  c.patient_relationship_to_insured                       = :self
  c.patient_or_authorized_signature                       = "Signature on File"
  c.patient_or_authorized_signature_date                  = "2012-08-02"                # Field type is string, not date!
  c.insured_or_authorized_signature                       = "Signature on File"

  c.condition_related_to_other_accident                   = true
  c.condition_related_to_employment                       = false
  c.condition_related_to_auto_accident                    = false

  # Section 14 and lower

  c.date_of_current_illness_injury_pregnancy              = "2012-02-03"
  c.date_if_patient_has_had_similar_illness               = "2012-02-10"

  c.dates_unable_to_work_occupation_from                  = "2012-02-10"
  c.dates_unable_to_work_occupation_to                    = "2012-02-11"

  c.referring_provider_or_other_source_name               = "Other Source or Provider"
  c.referring_provider_or_source_npi                      = "12031021230"
  c.hospitalization_related_to_current_service_from       = "2012-02-10"
  c.hospitalization_related_to_current_service_to         = "2012-02-14"
  c.reserved_for_local_use                                = "Reserved for future use"
  c.outside_lab                                           = true                       #20
  c.outside_lab_charges                                   = 999999.01                  #20

  # 21
  c.diagnosis_codes(1, 'V722.83')
  c.diagnosis_codes(2, '720.2')
  c.diagnosis_codes(3, '100.2')
  c.diagnosis_codes(4, '100.2')

  c.medicaid_resubmission_code                            = 'MRC-1'
  c.medicaid_resubmission_orginal_ref_number              = 'probably unused'
  c.prior_authorization_number                            = '100000000020310'
  c.federal_tax_id                                        = :ssn
  c.patient_account_number                                = '999999999999999'
  c.accepts_assignment                                    = false

  c.total_charge                                          = 200.01
  c.amount_paid                                           = 201.99
  c.balance_due                                           = 201.99

  c.signature_of_physician_or_supplier_of_degrees         = "Physician Signature"
  c.date_of_signature_of_physician_or_supplier_of_degrees = "2012-01-02"           # String not date field object

  c.service_facility_name                                 = "Service or Facility Name - OR"
  c.service_facility_address                              = "12345 Example Rd"
  c.service_facility_city                                 = "Miami"
  c.service_facility_state                                = "FL"
  c.service_facility_zip                                  = "34476"

  c.billing_provider_name                                 = "North Shore ANES Partners"
  c.billing_provider_address                              = "12345 Example Rd"
  c.billing_provider_city                                 = "Miami"
  c.billing_provider_state                                = "FL"
  c.billing_provider_zip                                  = "34476"
  c.billing_provider_phone                                = "5555555555"

  # Draw the claim
  c.draw(File.join(File.dirname(__FILE__), "ruby_claim/ext/sample.pdf"))
end
