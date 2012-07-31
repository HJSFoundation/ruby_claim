module RubyClaim::Definition
  class ClaimFields < RubyClaim::Definition::Base
    field     name:        :black_lung,
              id:          '1',
              description: 'Titled Claim Filing Indicator Code in the 837P.',
              bottom:      23.77.cm,
              left:        10.38.cm,
              loop_name:   '2000B ',
              segment:     '',
              type:        :boolean

    field     name:        :feca,
              id:          '1',
              description: 'Titled Claim Filing Indicator Code in the 837P.',
              bottom:      23.77.cm,
              left:        10.38.cm,
              loop_name:   '2000B ',
              segment:     '',
              type:        :boolean

    field     name:        :group_health_plan,
              id:          '1',
              description: 'Titled Claim Filing Indicator Code in the 837P.',
              bottom:      23.77.cm,
              left:        8.4.cm,
              loop_name:   '2000B ',
              segment:     '',
              type:        :boolean

    field     name:        :champva,
              id:          '1',
              description: 'Titled Claim Filing Indicator Code in the 837P.',
              bottom:      23.77.cm,
              left:        6.55.cm,
              loop_name:   '2000B ',
              segment:     '',
              type:        :boolean

    field     name:        :tricare_champus,
              id:          '1',
              description: 'Titled Claim Filing Indicator Code in the 837P.',
              bottom:      23.77.cm,
              left:        4.3.cm,
              loop_name:   '2000B ',
              segment:     '',
              type:        :boolean

    field     name:        :medicaid,
              id:          '1',
              description: 'Titled Claim Filing Indicator Code in the 837P.',
              bottom:      23.77.cm,
              left:        2.5.cm,
              loop_name:   '2000B ',
              segment:     '',
              type:        :boolean

    field     name:        :medicare,
              id:          '1',
              description: 'Titled Claim Filing Indicator Code in the 837P.',
              bottom:      23.77.cm,
              left:        0.8.cm,
              loop_name:   '2000B ',
              segment:     '',
              type:        :boolean

    field     name:        :carrier_other,
              id:          '1',
              description: 'Titled Claim Filing Indicator Code in the 837P.',
              bottom:      23.77.cm,
              left:        11.9.cm,
              loop_name:   '2000B ',
              segment:     '',
              type:        :boolean

    field     name:        :insured_id_number,
              id:          '1a ',
              description: 'Titled Subscriber Primary Identifier in the 837P.',
              bottom:      23.77.cm,
              left:        13.25.cm,
              loop_name:   '2010BA ',
              segment:     '',
              type:        :boolean

    field     name:        :patient_name,
              id:          '2',
              description: '',
              bottom:      22.95.cm,
              left:        0.8.cm,
              loop_name:   '2010CA or 2010BA ',
              segment:     '',
              type:        :boolean

    field     name:        :patient_date_of_birth,
              id:          '3',
              description: 'Sex is titled Gender in the 837P .',
              bottom:      '',
              left:        '',
              loop_name:   '2010CA or 2010BA ',
              segment:     '',
              type:        :boolean

    field     name:        :patient_gender,
              id:          '3',
              description: 'Sex is titled Gender in the 837P .',
              bottom:      '',
              left:        '',
              loop_name:   '2010CA or 2010BA ',
              segment:     '',
              type:        :boolean

    field     name:        :insured_name,
              id:          '4',
              description: 'Titled Subscriber in the 837P .',
              bottom:      22.95.cm,
              left:        13.25.cm,
              loop_name:   '2010BA ',
              segment:     '',
              type:        :boolean

    field     name:        :patient_address,
              id:          '5',
              description: '',
              bottom:      '',
              left:        '',
              loop_name:   '2010CA ',
              segment:     '',
              type:        :boolean

    field     name:        :patient_relationship_to_insured,
              id:          '6',
              description: 'Titled Individual Relationship Code in the 837P .',
              bottom:      '',
              left:        '',
              loop_name:   '2000B 2000C ',
              segment:     '',
              type:        :boolean

    field     name:        :insured_address,
              id:          '7',
              description: 'Titled Subscriber Address in the 837P.',
              bottom:      '',
              left:        13.25.cm,
              loop_name:   '2010BA ',
              segment:     '',
              type:        :boolean

    field     name:        :patient_status,
              id:          '8',
              description: 'Patient Status does not exist in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   'N/A ',
              segment:     '',
              type:        :boolean

    field     name:        :other_insured_name,
              id:          '9',
              description: 'Titled Other Subscriber Name in the 837P. ',
              bottom:      '',
              left:        '',
              loop_name:   '2330A ',
              segment:     '',
              type:        :boolean

    field     name:        :employer_name_or_school_name,
              id:          '9c ',
              description: 'Employer\'s Name and School Name do not exist in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   'N/A ',
              segment:     '',
              type:        :boolean

    field     name:        :other_insured_date_of_birth,
              id:          '9b ',
              description: 'Other Insured\'s Date of Birth and Sex do not exist in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   'N/A ',
              segment:     '',
              type:        :boolean

    field     name:        :other_insured_gender,
              id:          '9b ',
              description: 'Other Insured\'s Date of Birth and Sex do not exist in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   'N/A ',
              segment:     '',
              type:        :boolean

    field     name:        :other_insured_policy_or_group_number,
              id:          '9a ',
              description: 'Titled Insured Group or Policy Number in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2320',
              segment:     '',
              type:        :boolean

    field     name:        :condition_related_to_other_accident,
              id:          '10c ',
              description: 'Titled Related Causes Code in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2300',
              segment:     '',
              type:        :boolean

    field     name:        :condition_related_to_employment,
              id:          '10a ',
              description: 'Titled Related Causes Code in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2300',
              segment:     '',
              type:        :boolean

    field     name:        :condition_related_to_auto_accident,
              id:          '10b ',
              description: 'Titled Related Causes Code in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2300',
              segment:     '',
              type:        :boolean

    field     name:        :insured_employer_or_school_name,
              id:          '11b ',
              description: 'Insured\'s Employer Name or School Name',
              bottom:      '',
              left:        13.25.cm,
              loop_name:   'N/A ',
              segment:     '',
              type:        :boolean

    field     name:        :is_there_another_health_benefit_plan,
              id:          '11d ',
              description: 'Presence of Loop 2320 indicates Y (yes) to the question.',
              bottom:      '',
              left:        '',
              loop_name:   '2320',
              segment:     '',
              type:        :boolean

    field     name:        :insured_policy_or_group_number,
              id:          '11',
              description: 'Titled Subscriber Group or Policy Number in the 837P.',
              bottom:      '',
              left:        13.25.cm,
              loop_name:   '2000B ',
              segment:     '',
              type:        :boolean

    field     name:        :insured_date_of_birth,
              id:          '11a ',
              description: 'Titled Subscriber Birth Date and Subscriber Gender Code in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2010BA ',
              segment:     '',
              type:        :boolean

    field     name:        :insured_gender,
              id:          '11a ',
              description: 'Titled Subscriber Birth Date and Subscriber Gender Code in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2010BA ',
              segment:     '',
              type:        :boolean

    field     name:        :insurance_plan_or_program_name,
              id:          '11c ',
              description: 'Titled Subscriber Group Name in the 837P.',
              bottom:      '',
              left:        13.25.cm,
              loop_name:   '2000B ',
              segment:     '',
              type:        :boolean

    field     name:        :patient_or_authorized_signature,
              id:          '12',
              description: 'Titled Release of Information Code in the 837P .',
              bottom:      '',
              left:        '',
              loop_name:   '2300',
              segment:     '',
              type:        :boolean

    field     name:        :insured_or_authorized_signature,
              id:          '13',
              description: 'Titled Benefits Assignment Certification Indicator in the 837P .',
              bottom:      '',
              left:        '',
              loop_name:   '2300',
              segment:     '',
              type:        :boolean

    field     name:        :date_of_current_illness_injury_pregnancy,
              id:          '14',
              description: 'Titled in the 837P:',
              bottom:      '',
              left:        '',
              loop_name:   '2300',
              segment:     '',
              type:        :boolean

    field     name:        :if_patient_has_had_similar_illness,
              id:          '15',
              description: 'If Patient Has Had Same or Similar Illness does not exist in 837P.',
              bottom:      '',
              left:        '',
              loop_name:   'N/A ',
              segment:     '',
              type:        :boolean

    field     name:        :dates_unable_to_work_occupation_from,
              id:          '16',
              description: 'Titled Disability From Date and Work Return Date in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2300',
              segment:     '',
              type:        :boolean

    field     name:        :dates_unable_to_work_occupation_to,
              id:          '16',
              description: 'Titled Disability From Date and Work Return Date in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2300',
              segment:     '',
              type:        :boolean

    field     name:        :other_provider_source,
              id:          '17a ',
              description: 'Titled Referring Provider Secondary Identifier and Supervising Provider Secondary Identifier in the 837P .',
              bottom:      '',
              left:        '',
              loop_name:   '2310A (referring) 2310D (supervising) ',
              segment:     '',
              type:        :boolean

    field     name:        :referring_provider_or_other_source_name,
              id:          '17',
              description: '',
              bottom:      '',
              left:        '',
              loop_name:   '2310A (referring) 2310D (supervising) ',
              segment:     '',
              type:        :boolean

    field     name:        :hospitalization_related_to_current_service_from,
              id:          '18',
              description: 'Titled Related Hospitalization Admission Date and Related Hospitalization Discharge Date in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2300',
              segment:     '',
              type:        :boolean

    field     name:        :hospitalization_related_to_current_service_to,
              id:          '18',
              description: 'Titled Related Hospitalization Admission Date and Related Hospitalization Discharge Date in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2300',
              segment:     '',
              type:        :boolean

    field     name:        :reserved_for_local_use,
              id:          '19',
              description: '',
              bottom:      '',
              left:        '',
              loop_name:   '2300',
              segment:     '',
              type:        :boolean

    field     name:        :outside_lab,
              id:          '20',
              description: 'Titled Purchased Service Charge Amount in the 837P .',
              bottom:      '',
              left:        '',
              loop_name:   '2400',
              segment:     '',
              type:        :boolean

    field     name:        :outside_lab_charges,
              id:          '20',
              description: 'Titled Purchased Service Charge Amount in the 837P .',
              bottom:      '',
              left:        '',
              loop_name:   '2400',
              segment:     '',
              type:        :boolean

    field     name:        'Diagnosis or Nature of Illness or Injury',
              id:          '21',
              description: '',
              bottom:      '',
              left:        '',
              loop_name:   '2300',
              segment:     '',
              type:        :boolean

    field     name:        'Medicaid Resubmission and/or Original Reference Number',
              id:          '22',
              description: 'Titled Claim Frequency Code in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2300',
              segment:     '',
              type:        :boolean

    field     name:        'Prior Authorization Number',
              id:          '23',
              description: 'Titled Prior Authorization Number in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2300',
              segment:     '',
              type:        :boolean

    field     name:        'Federal Tax ID Number',
              id:          '25',
              description: 'Titled Reference Identification Qualifier and Billing Provider Tax Identification Number in the 837P .',
              bottom:      '',
              left:        '',
              loop_name:   '2010AA ',
              segment:     '',
              type:        :boolean

    field     name:        'Patient\'s Account No.',
              id:          '26',
              description: 'Titled Patient Control Number in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2300',
              segment:     '',
              type:        :boolean

    field     name:        'Accept Assignment? ',
              id:          '27',
              description: 'Titled Assignment or Plan Participation Code in the 837P .',
              bottom:      '',
              left:        '',
              loop_name:   '2300',
              segment:     '',
              type:        :boolean

    field     name:        'Total Charge ',
              id:          '28',
              description: 'Titled Total Claim Charge Amount in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2300',
              segment:     '',
              type:        :boolean

    field     name:        'Amount Paid',
              id:          '29',
              description: 'Titled Patient Amount Paid in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2300',
              segment:     '',
              type:        :boolean

    field     name:        'Balance Due ',
              id:          '30',
              description: 'Balance Due does not exist in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   'N/A ',
              segment:     '',
              type:        :boolean

    field     name:        'Signature of Physician or Supplier Including Degrees or Credentials',
              id:          '31',
              description: 'Titled Provider or Supplier Signature Indicator in the 837P .',
              bottom:      '',
              left:        '',
              loop_name:   '2300',
              segment:     '',
              type:        :boolean

    field     name:        'Service Facility Location Information',
              id:          '32',
              description: '',
              bottom:      '',
              left:        '',
              loop_name:   '2310C ',
              segment:     '',
              type:        :boolean

    field     name:        'NPI #',
              id:          '33a ',
              description: 'Titled Billing Provider Identifier in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2010AA ',
              segment:     '',
              type:        :boolean

    field     name:        'Other ID # ',
              id:          '33b ',
              description: 'Titled Provider Taxonomy Code in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2000A 2010AA ',
              segment:     '',
              type:        :boolean

    field     name:        'Billing Provider Info & Ph #',
              id:          '33',
              description: '',
              bottom:      '',
              left:        '',
              loop_name:   '2010AA ',
              segment:     '',
              type:        :boolean

  end
end


