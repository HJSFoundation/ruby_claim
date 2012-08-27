require 'prawn'
require 'prawn/measurement_extensions'
require 'json'
require 'date'

require_relative "ruby_claim/version"
require_relative "ruby_claim/field"
require_relative "ruby_claim/definitions/base"
require_relative "ruby_claim/definitions/claim_fields"
require_relative "ruby_claim/definitions/service_fields"
require_relative "ruby_claim/outputters/pdf"
require_relative "ruby_claim/outputters/json"
require_relative "ruby_claim/claim"


module RubyClaim; end

if __FILE__ == $0
  c = RubyClaim::Claim.new(:hide_background => false)

  c.carrier_name                             = "BIG COMPANY CARRIER FOR HIRE - OR"
  c.carrier_address_1                        = "11th EXAMPLE RD ST LN #1235"
  c.carrier_address_2                        = "PLACEMENT"
  c.carrier_city                             = "Ocala"
  c.carrier_state                            = 'FL'
  c.carrier_zip                              = '34471-7005'

  c.insurance_type                           = :medicare
  c.insured_id_number                        = 'insured_id_number'
  c.insured_name                             = 'insured_name'
  c.insured_address                          = 'insured_address'
  c.insured_city                             = 'Ocala'
  c.insured_state                            = 'FL'
  c.insured_zip                              = '34476'
  c.insured_phone                            = '3525555555'
  c.insured_other_health_benefit_plan_exists = false
  c.insured_policy_or_group_number           = '12341251'
  c.insured_date_of_birth                    = '1947-11-04'
  c.insured_sex                              = :male

  c.other_insured_name                       = 'Flinstone, Frederick, C'
  c.other_insured_sex                        = :male
  c.other_insured_date_of_birth              = '1955-10-31'
  c.other_insured_policy_or_group_number     = '123451'
  c.employer_name_or_school_name             = 'University Of Florida'
  c.other_insured_plan_or_program_name       = 'PLAN OR PROGRAM NAME'

  c.patient_name                             = "Jane Jetson"
  c.patient_address                          = 'patient_address'
  c.patient_date_of_birth                    = '1960-07-21'
  c.patient_sex                              = :female
  c.patient_city                             = 'Ocala'
  c.patient_state                            = 'FL'
  c.patient_zip                              = '34476'
  c.patient_phone                            = '3525555555'
  c.patient_marital_status                   = :single
  c.patient_employment_status                = :full_time_student
  c.patient_relationship_to_insured          = :self
  c.patient_or_authorized_signature          = "Signature on File"
  c.patient_or_authorized_signature_date     = "2012-08-02"                # Field type is string, not date!
  c.insured_or_authorized_signature          = "Signature on File"

  c.condition_related_to_other_accident      = true
  c.condition_related_to_employment          = false
  c.condition_related_to_auto_accident       = false
  c.condition_place                          = "FL"

  c.condition_reserved_for_local_use         = "RESERVED FOR LOCAL"
  # Section 14 and lower

  c.incident_date                            = "2012-02-03"
  c.incident_onset_date                      = "2012-02-10"

  c.dates_unable_to_work_from                = "2012-02-10"
  c.dates_unable_to_work_to                  = "2012-02-11"

  c.referring_provider_name                  = "Other Source or Provider"
  c.referring_provider_npi                   = "12031021230"
  c.referring_provder_other_identifier       = "J1"
  c.referring_provider_other_number          = "10000000000002"

  c.admit_date                               = "2012-02-10"
  c.discharge_date                           = "2012-02-14"
  c.reserved_for_local_use                   = "Reserved for future use"
  c.outside_lab                              = true                       #20
  c.outside_lab_charges                      = 999999.01                  #20

  # 21
  c.set_diagnosis_code(1, 'V722.83')
  c.set_diagnosis_code(2, '720.2')
  c.set_diagnosis_code(3, '100.2')
  c.set_diagnosis_code(4, '100.2')

  c.medicaid_resubmission_code               = 'MRC-1'
  c.medicaid_resubmission_orginal_ref_number = 'probably unused'
  c.prior_authorization_number               = '100000000020310'
  c.federal_tax_id                           = '123456789'
  c.federal_tax_id_type                      = :ssn
  c.patient_account_number                   = '999999999999999'
  c.accepts_assignment                       = false

  c.total_charge                             = 200.01
  c.amount_paid                              = 201.99
  c.balance_due                              = -1.99

  c.provider_signature                       = "Physician Signature"
  c.provider_signature_date                  = "2012-01-02"           # String not date field object

  c.service_facility_name                    = "Service or Facility Name - OR"
  c.service_facility_address                 = "12345 Example Rd"
  c.service_facility_city                    = "Miami"
  c.service_facility_state                   = "FL"
  c.service_facility_zip                     = "34476"
  c.service_facility_npi                     = "10000000000"
  c.service_facility_legacy_number           = "10000000000"

  c.billing_provider_name                    = "North Shore ANES Partners"
  c.billing_provider_address                 = "12345 Example Rd"
  c.billing_provider_city                    = "Miami"
  c.billing_provider_state                   = "FL"
  c.billing_provider_zip                     = "34476"
  c.billing_provider_phone                   = "5555555555"
  c.billing_provider_npi                     = "10000000000"
  c.billing_provider_legacy_number           = "10000000000"

  (0...6).each do |i|
    c.build_service do |s|
      s.date_of_service_from    = c.time_rand
      s.date_of_service_to      = c.time_rand
      s.place_of_service        = "22"
      s.emergency               = "12"
      s.procedure_code          = "00851"
      s.modifier_1              = "10"
      s.modifier_2              = "10"
      s.modifier_3              = "10"
      s.modifier_4              = "10"
      s.diagnosis_pointer       = "1"
      s.charges                 = 200.10
      s.days_or_units           = 20
      s.epsdt_family_plan       = "Y"
      s.npi_number              = rand(10000000000000).to_s
      s.legacy_number_qualifier = "J1"
      s.legacy_number           = rand(10000000000000).to_s
      s.description             = "START: 8:20AM      END: 9:12AM      MINUTES: 52 (Whatever you want!)"
    end
  end

  c.to_pdf('sample.pdf')
  c.to_json('sample.json')

  `open sample.pdf`
end
