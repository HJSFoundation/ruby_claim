module RubyClaim::Definition
  class Base
    attr_accessor :values

    def self.fields
      @fields ||= []
    end

    def self.field(field)
      f             = RubyClaim::Field.new
      f.id          = field[:id]
      f.left        = field[:left]
      f.bottom      = field[:bottom]
      f.description = field[:description]
      f.loop_name   = field[:loop]
      f.segment     = field[:segment]
      f.name        = field[:name]

      fields << f
    end

    def get_field_name(text)
      text.to_s.gsub(' ','').gsub('=','')
    end

    def get_field(str)
      self.class.fields.select {|f| f.name.to_s == str }.first
    end

    def method_missing(method_name, *args)
      @values ||= {}
      field = get_field(get_field_name(method_name.to_s))

      raise StandardError, "Field (#{method_name.to_s}) is not defined. =p" if field.nil?

      if method_name.to_s =~ /=\z/
        self.values[field.name] = args[0]
      else
        self.values[field.name]
      end

    end
  end
end