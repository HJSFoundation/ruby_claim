module RubyClaim::Definition
  class ServiceFields < RubyClaim::Definition::Base
    field     name:        'Date(s) of Service ',
              id:          '24A ',
              description: 'Titled Service Date in the 837P .',
              bottom:      '',
              left:        '',
              loop_name:   '2400',
              segment:     '',
              type:        :boolean

    field     name:        'Rendering Provider ID # ',
              id:          '24J ',
              description: '',
              bottom:      '',
              left:        '',
              loop_name:   '2310B ',
              segment:     '',
              type:        :boolean

    field     name:        'Place of Service ',
              id:          '24B ',
              description: 'Titled Facility Code Value in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2300',
              segment:     '',
              type:        :boolean

    field     name:        'EMG ',
              id:          '24C ',
              description: 'Titled Emergency Indicator in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2400',
              segment:     '',
              type:        :boolean

    field     name:        'Procedures, Services, or Supplies ',
              id:          '24D ',
              description: 'Titled Product/Service ID and Procedure Modifier in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2400 2400 ',
              segment:     '',
              type:        :boolean

    field     name:        'Diagnosis Pointer ',
              id:          '24E ',
              description: 'Titled Diagnosis Code Pointer in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2400',
              segment:     '',
              type:        :boolean

    field     name:        '$ Charges ',
              id:          '24F ',
              description: 'Titled Line Item Charge Amount in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2400',
              segment:     '',
              type:        :boolean

    field     name:        'ID Qualifier ',
              id:          '24I Shaded Line ',
              description: 'Titled Reference Identification Qualifier in the 837P .',
              bottom:      '',
              left:        '',
              loop_name:   '2310B ',
              segment:     '',
              type:        :boolean

    field     name:        'EPSDT/Family Plan ',
              id:          '24H ',
              description: 'Titled EPSDT Indicator and Family Planning Indicator in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2400',
              segment:     '',
              type:        :boolean

    field     name:        'Days or Units ',
              id:          '24G ',
              description: 'Titled Service Unit Count in the 837P.',
              bottom:      '',
              left:        '',
              loop_name:   '2400',
              segment:     '',
              type:        :boolean
  end
end
