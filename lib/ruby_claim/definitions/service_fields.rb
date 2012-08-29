module RubyClaim::Definition
  class ServiceFields < RubyClaim::Definition::Base
    attr_accessor :service_paid_amount # to make splitting claims with more than 6 services

    field     name:        :date_of_service_from,
              id:          '24A',
              top:         108.56,
              left:        '',
              height:      11.52,
              width:       17.08,
              type:        :date,
              options:     {year: 64.18, month: 23.72, day: 44.68}

    field     name:        :date_of_service_to,
              id:          '24A',
              top:         108.56,
              left:        '',
              height:      11.52,
              width:       17.08,
              type:        :date,
              options:     {year: 129.81, month: 86.67, day: 109.13}

    field     name:        :place_of_service,
              id:          '24B',
              top:         108.56,
              left:        150.97,
              height:      11.52,
              width:       18.15,
              type:        :string

    field     name:        :emergency,
              id:          '24C',
              top:         108.56,
              left:        173.21,
              height:      11.52,
              width:       13.56,
              type:        :string

    field     name:        :procedure_code,
              id:          '24D',
              top:         108.56,
              left:        196.25,
              height:      11.52,
              width:       44.66,
              type:        :string

    field     name:        :modifier_1,
              id:          '24D',
              top:         108.56,
              left:        248.58,
              height:      11.52,
              width:       19.83,
              type:        :string

    field     name:        :modifier_2,
              id:          '24D',
              top:         108.56,
              left:        271.48,
              height:      11.52,
              width:       19.83,
              type:        :string

    field     name:        :modifier_3,
              id:          '24D',
              top:         108.56,
              left:        292.98,
              height:      11.52,
              width:       19.83,
              type:        :string

    field     name:        :modifier_4,
              id:          '24D',
              top:         108.56,
              left:        314.99,
              height:      11.52,
              width:       19.83,
              type:        :string

    field     name:        :diagnosis_pointer,
              id:          '24E',
              top:         108.56,
              left:        343.97,
              height:      11.52,
              width:       18.04,
              type:        :string

    field     name:        :charges,
              id:          '24F',
              top:         108.56,
              left:        '',
              height:      11.52,
              width:       nil,
              type:        :money,
              options:     {dollars:[375.25,41.46],cents:[420.82,16.31]}

    field     name:        :days_or_units,
              id:          '24G',
              top:         108.56,
              left:        444.15,
              height:      11.52,
              width:       12.67,
              type:        :string

    field     name:        :epsdt_family_plan,
              id:          '24H',
              top:         108.56,
              left:        466.8,
              height:      11.52,
              width:       11.52,
              type:        :string

    field     name:        :legacy_number_qualifier,
              id:          '24J',
              top:         108.56,
              left:        481.77,
              height:      0,
              width:       15.74,
              type:        :string

    field     name:        :legacy_number,
              id:          '24J',
              top:         108.56,
              left:        502.88,
              height:      0,
              width:       85.79,
              type:        :string

    field     name:        :npi_number,
              id:          '24J',
              top:         108.56,
              left:        502.88,
              height:      11.52,
              width:       85.79,
              type:        :string

    field     name:        :description,
              id:          '24',
              top:         109.56,
              left:        23.72,
              height:      -1,
              width:       453.72,
              type:        :string

    def row_tops
      [538.66, 562.46, 586.45, 610.64, 633.86, 657.43]
    end
  end
end
