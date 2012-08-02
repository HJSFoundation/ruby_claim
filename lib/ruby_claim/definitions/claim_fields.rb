module RubyClaim::Definition
  class ClaimFields < RubyClaim::Definition::Base
    field     name:        :insurance_type,
              id:          '1',
              top:         109.36,
              left:        nil,
              width:       10,
              height:      10,
              type:        :checkbox,
              options:     { :black_lung => 293.49,
                             :group_health_plan => 235.98,
                             :champva => 185.52,
                             :tricare_champus => 120.32,
                             :medicaid => 69.21,
                             :medicare => 20.87 }

    field     name:        :carrier_other,
              id:          '1',
              top:         109.36,
              left:        336.34,
              height:      10,
              width:       10,
              type:        :checkbox

    field     name:        :insured_id_number,
              id:          '1a ',
              top:         108.56,
              left:        377.48,
              height:      10.3,
              width:       178.08,
              type:        :string

    field     name:        :patient_name,
              id:          '2',
              top:         131.51,
              left:        23.93,
              height:      10.28,
              width:       190.72,
              type:        :string

    field     name:        :patient_date_of_birth,
              id:          '3',
              top:         135,
              left:        '',
              height:      8.28,
              width:       11.04,
              type:        :date,
              options:     {year: 289.22, month: 241, day: 262.61}

    field     name:        :patient_sex,
              id:          '3',
              top:         133.61,
              left:        '',
              height:      10,
              width:       10,
              type:        :checkbox,
              options:     {:male => 315.37, :female => 351.32}

    field     name:        :insured_name,
              id:          '4',
              top:         132.51,
              left:        377.48,
              height:      10.28,
              width:       178.08,
              type:        :string

    field     name:        :patient_address,
              id:          '5',
              top:         156,
              left:        23.93,
              height:      10.28,
              width:       190.72,
              type:        :string

    field     name:        :patient_relationship_to_insured,
              id:          '6',
              top:         156.38,
              left:        nil,
              height:      10,
              width:       10,
              type:        :checkbox,
              options:     {:self => 250.75, :spouse => 286.84, :child => 315.5, :other => 351.1}

    field     name:        :patient_city,
              id:          '5',
              top:         177.69,
              left:        23.93,
              height:      10.28,
              width:       190.72,
              type:        :string

    field     name:        :patient_state,
              id:          '5',
              top:         176.53,
              left:        204.44,
              height:      13.44,
              width:       19.58,
              type:        :string

    field     name:        :patient_zip,
              id:          '5',
              top:         203.4,
              left:        23.93,
              height:      10.28,
              width:       85.22,
              type:        :string

    field     name:        :patient_phone,
              id:          '5',
              top:         203.02,
              left:        nil,
              height:      11.9,
              width:       nil,
              type:        :phone,
              options:     {area_code: [122.67, 21.88], number: [152, 67.56]}

    field     name:        :insured_address,
              id:          '7',
              top:         156,
              left:        377.48,
              height:      10.28,
              width:       178.08,
              type:        :string

    field     name:        :insured_city,
              id:          '7',
              top:         176.73,
              left:        375.35,
              height:      13.91,
              width:       190.72,
              type:        :string

    field     name:        :insured_state,
              id:          '7',
              top:         176.53,
              left:        546.16,
              height:      13.44,
              width:       19.58,
              type:        :string

    field     name:        :insured_zip,
              id:          '7',
              top:         200.62,
              left:        375.25,
              height:      13.91,
              width:       86.56,
              type:        :string

    field     name:        :insured_phone,
              id:          '7',
              top:         203.02,
              left:        nil,
              height:      11.9,
              width:       nil,
              type:        :phone,
              options:     {area_code: [484.46, 21.88], number: [510.66, 67.56]}

    field     name:        :patient_marital_status,
              id:          '8',
              top:         179.99,
              left:        '',
              height:      10.27,
              width:       9.98,
              type:        :checkbox,
              options:     {:single => 265.66, :married => 308.65, :other => 351.55}

    field     name:        :patient_employment_status,
              id:          '8',
              top:         204.08,
              left:        '',
              height:      10.27,
              width:       9.98,
              type:        :checkbox,
              options:     {:employed => 265.66, :full_time_student => 308.65, :part_time_student => 351.55}

    field     name:        :other_insured_name,
              id:          '9',
              top:         227.48,
              left:        23.93,
              height:      10.28,
              width:       198.36,
              type:        :string

    field     name:        :employer_name_or_school_name,
              id:          '9c ',
              top:         299.2,
              left:        23.93,
              height:      10.28,
              width:       200,
              type:        :string

    field     name:        :other_insured_date_of_birth,
              id:          '9b',
              top:         278.3,
              left:        '',
              height:      8.28,
              width:       11.04,
              type:        :date,
              options:     {year: 72.29, month: 31.79, day: 52.72}

    field     name:        :other_insured_sex,
              id:          '9b',
              top:         276.57,
              left:        '',
              height:      10,
              width:       10,
              type:        :checkbox,
              options:     {:male => 143.48, :female => 185.47}

    field     name:        :other_insured_policy_or_group_number,
              id:          '9a ',
              top:         252.85,
              left:        23.93,
              height:      10.28,
              width:       200.53,
              type:        :string

    field     name:        :condition_related_to_other_accident,
              id:          '10c',
              top:         300.14,
              left:        '',
              height:      9.85,
              width:       9.85,
              type:        :boolean,
              options:     {:yes => 265.85, :no => 308.72}

    field     name:        :condition_related_to_employment,
              id:          '10a',
              top:         252,
              left:        '',
              height:      9.85,
              width:       9.85,
              type:        :boolean,
              options:     {:yes => 265.85, :no => 308.72}

    field     name:        :condition_related_to_auto_accident,
              id:          '10a',
              top:         276.18,
              left:        '',
              height:      9.85,
              width:       9.85,
              type:        :boolean,
              options:     {:yes => 265.85, :no => 308.72}

    field     name:        :insured_employer_or_school_name,
              id:          '11b ',
              top:         275.78,
              left:        13.25.cm,
              height:      10.28,
              width:       211.25,
              type:        :string

    field     name:        :is_there_another_health_benefit_plan,
              id:          '11d ',
              top:         324.06,
              left:        '',
              height:      9.98,
              width:       9.98,
              type:        :boolean,
              options:     {:yes => 387.66, :no => 423.75}

    field     name:        :insured_policy_or_group_number,
              id:          '11',
              top:         227.67,
              left:        377.48,
              height:      10.28,
              width:       209.07,
              type:        :string

    field     name:        :insured_date_of_birth,
              id:          '11a ',
              top:         255.1,
              left:        '',
              height:      8.28,
              width:       11.04,
              type:        :date,
              options:     {:year => 441.28, :month => 400.2, :day => 420.55}

    field     name:        :insured_sex,
              id:          '11a ',
              top:         252.28,
              left:        '',
              height:      10.24,
              width:       9.98,
              type:        :checkbox,
              options:     {:male => 503.08, :female => 553.87}

    field     name:        :insurance_plan_or_program_name,
              id:          '11c',
              top:         300.35,
              left:        377.48,
              height:      10.28,
              width:       211.38,
              type:        :string

    field     name:        :patient_or_authorized_signature,
              id:          '12',
              top:         368.07,
              left:        58.76,
              height:      10.28,
              width:       176.86,
              type:        :string

    field     name:        :patient_or_authorized_signature_date,
              id:          '12',
              top:         368.07,
              left:        280.16,
              height:      10.28,
              width:       91.26,
              type:        :string

    field     name:        :insured_or_authorized_signature,
              id:          '13',
              top:         368.07,
              left:        417.17,
              height:      10.28,
              width:       169.36,
              type:        :string

    field     name:        :date_of_current_illness_injury_pregnancy,
              id:          '14',
              top:         '',
              left:        '',
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        :if_patient_has_had_similar_illness,
              id:          '15',
              top:         '',
              left:        '',
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        :dates_unable_to_work_occupation_from,
              id:          '16',
              top:         '',
              left:        '',
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        :dates_unable_to_work_occupation_to,
              id:          '16',
              top:         '',
              left:        '',
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        :other_provider_source,
              id:          '17a ',
              top:         '',
              left:        '',
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        :referring_provider_or_other_source_name,
              id:          '17',
              top:         '',
              left:        0.8.cm,
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        :hospitalization_related_to_current_service_from,
              id:          '18',
              top:         '',
              left:        '',
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        :hospitalization_related_to_current_service_to,
              id:          '18',
              top:         '',
              left:        '',
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        :reserved_for_local_use,
              id:          '19',
              top:         '',
              left:        '',
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        :outside_lab,
              id:          '20',
              top:         '',
              left:        '',
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        :outside_lab_charges,
              id:          '20',
              top:         '',
              left:        '',
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        'Diagnosis or Nature of Illness or Injury',
              id:          '21',
              top:         '',
              left:        '',
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        'Medicaid Resubmission and/or Original Reference Number',
              id:          '22',
              top:         '',
              left:        '',
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        'Prior Authorization Number',
              id:          '23',
              top:         '',
              left:        '',
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        'Federal Tax ID Number',
              id:          '25',
              top:         '',
              left:        0.8.cm,
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        'Patient\'s Account No.',
              id:          '26',
              top:         '',
              left:        '',
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        'Accept Assignment? ',
              id:          '27',
              top:         '',
              left:        '',
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        'Total Charge ',
              id:          '28',
              top:         '',
              left:        '',
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        'Amount Paid',
              id:          '29',
              top:         '',
              left:        '',
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        'Balance Due ',
              id:          '30',
              top:         '',
              left:        '',
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        'Signature of Physician or Supplier Including Degrees or Credentials',
              id:          '31',
              top:         '',
              left:        0.8.cm,
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        'Service Facility Location Information',
              id:          '32',
              top:         '',
              left:        '',
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        'NPI #',
              id:          '33a ',
              top:         '',
              left:        '',
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        'Other ID # ',
              id:          '33b ',
              top:         '',
              left:        '',
              height:      nil,
              width:       nil,
              type:        :string

    field     name:        'Billing Provider Info & Ph #',
              id:          '33',
              top:         '',
              left:        '',
              height:      nil,
              width:       nil,
              type:        :string

  end
end


