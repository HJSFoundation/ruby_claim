module RubyClaim::Definition
  class ClaimFields < RubyClaim::Definition::Base
    attr_accessor :carrier_city, :carrier_state, :carrier_zip

    field     name:        :carrier_name,
              id:          nil,
              top:         33,
              left:        328.59,
              height:      9.79,
              width:       189.05,
              type:        :string

    field     name:        :carrier_address_1,
              id:          nil,
              top:         45,
              left:        328.59,
              height:      9.79,
              width:       189.05,
              type:        :string

    field     name:        :carrier_address_2,
              id:          nil,
              top:         56,
              left:        328.59,
              height:      9.79,
              width:       189.05,
              type:        :string

    field     name:        :carrier_city_state_zip,
              id:          nil,
              top:         68,
              left:        328.59,
              height:      9.79,
              width:       189.05,
              type:        :string

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
                             :medicare => 20.87,
                             :other => 336.34 }

    field     name:        :insured_id_number,
              id:          '1a',
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
              options:     {year: 279.67, month: 241, day: 262.61, full_century: true}

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

    field     name:        :patient_relationship_to_insured,
              id:          '6',
              top:         156.38,
              left:        nil,
              height:      10,
              width:       10,
              type:        :checkbox,
              options:     {:self => 250.75, :spouse => 286.84, :child => 315.5, :other => 351.1}

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

    field     name:        :other_insured_policy_or_group_number,
              id:          '9a',
              top:         252.85,
              left:        23.93,
              height:      10.28,
              width:       200.53,
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

    field     name:        :employer_name_or_school_name,
              id:          '9c ',
              top:         299.2,
              left:        23.93,
              height:      10.28,
              width:       200,
              type:        :string

    field     name:        :other_insured_plan_or_program_name,
              id:          '9d',
              top:         323.76,
              left:        23.93,
              height:      10.28,
              width:       200.53,
              type:        :string

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

    field     name:        :condition_related_to_other_accident,
              id:          '10c',
              top:         300.14,
              left:        '',
              height:      9.85,
              width:       9.85,
              type:        :boolean,
              options:     {:yes => 265.85, :no => 308.72}

    field     name:        :condition_place,
              id:          '10',
              top:         275.31,
              left:        338.91,
              height:      10.3,
              width:       17.15,
              type:        :string

    field     name:        :condition_reserved_for_local_use,
              id:          '10d',
              top:         323.76,
              left:        231.18,
              height:      10.28,
              width:       200.53,
              type:        :string

    field     name:        :insured_policy_or_group_number,
              id:          '11',
              top:         227.67,
              left:        377.48,
              height:      10.28,
              width:       209.07,
              type:        :string

    field     name:        :insured_date_of_birth,
              id:          '11a',
              top:         255.1,
              left:        '',
              height:      8.28,
              width:       11.04,
              type:        :date,
              options:     {:year => 441.28, :month => 400.2, :day => 420.55}

    field     name:        :insured_sex,
              id:          '11a',
              top:         252.28,
              left:        '',
              height:      10.24,
              width:       9.98,
              type:        :checkbox,
              options:     {:male => 503.08, :female => 553.87}

    field     name:        :insured_employer_or_school_name,
              id:          '11b',
              top:         275.78,
              left:        13.25,
              height:      10.28,
              width:       211.25,
              type:        :string

    field     name:        :insured_insurance_plan_or_program_name,
              id:          '11c',
              top:         300.35,
              left:        377.48,
              height:      10.28,
              width:       211.38,
              type:        :string

    field     name:        :insured_other_health_benefit_plan_exists,
              id:          '11d',
              top:         324.06,
              left:        '',
              height:      9.98,
              width:       9.98,
              type:        :boolean,
              options:     {:yes => 387.66, :no => 423.75}

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

    field     name:        :incident_date,
              id:          '14',
              top:         399.04,
              left:        '',
              height:      7.68,
              width:       11.26,
              type:        :date,
              options:     {:year => 72.26, :month => 32.85, :day => 52.56}

    field     name:        :incident_onset_date,
              id:          '15',
              top:         398.79,
              left:        '',
              height:      7.68,
              width:       11.52,
              type:        :date,
              options:     {:year => 326.12, :month => 284.66, :day => 305.65}

    field     name:        :dates_unable_to_work_from,
              id:          '16',
              top:         398.79,
              left:        '',
              height:      7.68,
              width:       11.52,
              type:        :date,
              options:     {:year => 449.98, :month => 404.94, :day => 426.69}

    field     name:        :dates_unable_to_work_to,
              id:          '16',
              top:         398.53,
              left:        '',
              height:      7.93,
              width:       11.77,
              type:        :date,
              options:     {:year => 547.48, :month => 506.28, :day => 526.24}

    field     name:        :referring_provider_name,
              id:          '17',
              top:         419.73,
              left:        23.93,
              height:      10.28,
              width:       182.72,
              type:        :string

    field     name:        :referring_provder_other_identifier,
              id:          '17a',
              top:         408.96,
              left:        231.31,
              height:      9.79,
              width:       11.52,
              type:        :string

    field     name:        :referring_provider_other_number,
              id:          '17a',
              top:         409.07,
              left:        247.3,
              height:      9.79,
              width:       121.49,
              type:        :string

    field     name:        :referring_provider_npi,
              id:          '17b',
              top:         422.59,
              left:        247.3,
              height:      7.68,
              width:       123.09,
              type:        :string

    field     name:        :admit_date,
              id:          '18',
              top:         424.35,
              left:        404.43,
              height:      7.17,
              width:       11.52,
              type:        :date,
              options:     {:year => 449.72, :month => 404.43, :day => 426.94}

    field     name:        :discharge_date,
              id:          '18',
              top:         424.35,
              left:        506.53,
              height:      7.17,
              width:       11.52,
              type:        :date,
              options:     {:year => 547.48, :month => 506.53, :day => 526.24}

    field     name:        :reserved_for_local_use,
              id:          '19',
              top:         443.27,
              left:        23.93,
              height:      10.28,
              width:       343.13,
              type:        :string

    field     name:        :outside_lab,
              id:          '20',
              top:         444.85,
              left:        '',
              height:      9.98,
              width:       9.72,
              type:        :boolean,
              options:     {:yes => 388.81, :no => 424.9}

    field     name:        :outside_lab_charges,
              id:          '20',
              top:         444.34,
              left:        '',
              height:      10.28,
              width:       nil,
              type:        :money,
              options:     {dollars: [457.14,65], cents: [527,61.16]}

    field     name:        :diagnosis,
              id:          '21',
              top:         '',
              left:        '',
              height:      9.72,
              width:       26.36,
              type:        :diagnosis_code,
              options:     { 1 => [{top:467.63, left:36.69},  {top:467.37, left:63.56}],
                             2 => [{top:491.94, left:36.69},  {top:491.94, left:63.56}],
                             3 => [{top:467.63, left:231.43}, {top:467.63, left:258.3}],
                             4 => [{top:491.94, left:231.43}, {top:491.94, left:258.3}] }

    field     name:        :medicaid_resubmission_code,
              id:          '22',
              top:         469.12,
              left:        376.28,
              height:      10.28,
              width:       76.26,
              type:        :string

    field     name:        :medicaid_resubmission_orginal_ref_number,
              id:          '22',
              top:         469.12,
              left:        457.91,
              height:      10.28,
              width:       129.74,
              type:        :string

    field     name:        :prior_authorization_number,
              id:          '23',
              top:         491.89,
              left:        376.28,
              height:      10.28,
              width:       212.91,
              type:        :string

    field     name:        :federal_tax_id,
              id:          '25',
              top:         683.74,
              left:        nil,
              height:      10.24,
              width:       9.6,
              type:        :checkbox,
              options:     {ssn: 136.75, ein: 150.69}

    field     name:        :patient_account_number,
              id:          '26',
              top:         683.57,
              left:        180,
              height:      10.28,
              width:       101.47,
              type:        :string

    field     name:        :accepts_assignment,
              id:          '27',
              top:         684.51,
              left:        nil,
              height:      10.36,
              width:       10.36,
              type:        :boolean,
              options:     {yes:288.5,no:324.58}

    field     name:        :total_charge,
              id:          '28',
              top:         684.89,
              left:        '',
              height:      9.98,
              width:       52.08,
              type:        :money,
              options:     {dollars:[379.99,51.82],cents:[435.52,16.25]}

    field     name:        :amount_paid,
              id:          '29',
              top:         684.89,
              left:        459.96,
              height:      9.98,
              width:       nil,
              type:        :money,
              options:     {dollars:[459.96,42.99],cents:[506.66,12.8]}

    field     name:        :balance_due,
              id:          '30',
              top:         684.89,
              left:        '',
              height:      9.98,
              width:       41.71,
              type:        :money,
              options:     {dollars:[525.85,41.71],cents:[571.15,18.04]}

    field     name:        :provider_signature,
              id:          '31',
              top:         723.13,
              left:        23.93,
              height:      10.28,
              width:       106.42,
              type:        :string

    field     name:        :provider_signature_date,
              id:          '31',
              top:         738.33,
              left:        93.12,
              height:      10.28,
              width:       82.4,
              type:        :string

    field     name:        :service_facility_name,
              id:          '32',
              top:         703.95,
              left:        180.83,
              height:      9.79,
              width:       189.05,
              type:        :string

    field     name:        :service_facility_address,
              id:          '32',
              top:         717.43,
              left:        180.83,
              height:      9.79,
              width:       189.05,
              type:        :string

    field     name:        :service_facility_city,
              id:          '32',
              top:         730.44,
              left:        180.83,
              height:      9.79,
              width:       189.05,
              type:        :string

    field     name:        :service_facility_state,
              id:          '32',
              top:         730.44,
              left:        299.06,
              height:      9.79,
              width:       19,
              type:        :string

    field     name:        :service_facility_zip,
              id:          '32',
              top:         730.44,
              left:        316.91,
              height:      9.79,
              width:       54.12,
              type:        :string

    field     name:        :service_facility_npi,
              id:          '32a',
              top:         745.28,
              left:        185.63,
              height:      9.34,
              width:       73.83,
              type:        :string

    field     name:        :service_facility_legacy_number,
              id:          '32b',
              top:         745.28,
              left:        267.39,
              height:      9.34,
              width:       102.87,
              type:        :string

    field     name:        :billing_provider_name,
              id:          '33',
              top:         708.95,
              left:        375.44,
              height:      9.79,
              width:       189.05,
              type:        :string

    field     name:        :billing_provider_address,
              id:          '33',
              top:         720.43,
              left:        375.44,
              height:      9.79,
              width:       189.05,
              type:        :string

    field     name:        :billing_provider_city,
              id:          '33',
              top:         732.44,
              left:        375.44,
              height:      9.79,
              width:       189.05,
              type:        :string

    field     name:        :billing_provider_state,
              id:          '33',
              top:         732.44,
              left:        552.2,
              height:      9.79,
              width:       19,
              type:        :string

    field     name:        :billing_provider_zip,
              id:          '33',
              top:         732.44,
              left:        511.52,
              height:      9.79,
              width:       54.12,
              type:        :string

    field     name:        :billing_provider_phone,
              id:          '33',
              top:         698.58,
              left:        nil,
              height:      9.34,
              width:       54.12,
              type:        :phone,
              options:     {area_code: 490.15, number: 517.02}

    field     name:        :billing_provider_npi,
              id:          '33a',
              top:         745.28,
              left:        381.14,
              height:      9.34,
              width:       73.83,
              type:        :string

    field     name:        :billing_provider_legacy_number,
              id:          '33b',
              top:         745.28,
              left:        462.52,
              height:      9.34,
              width:       102.87,
              type:        :string

  end
end


