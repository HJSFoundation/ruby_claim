module RubyClaim
  class Field
    attr_accessor :id, :top, :left, :width, :height, :name, :type, :options, :size

    def size
      @size || 12
    end

    def top_field_coordinate_from_page_bottom
      792.0 - self.top.to_f
    end

    def bounding?
      return true unless self.height.nil? && self.width.nil?
      false
    end
  end
end
