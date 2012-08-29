module RubyClaim
  class Field
    attr_accessor :id, :top, :left, :width, :height, :name, :type, :options, :size

    def bottom
      (792.0 - self.top.to_f) - self.height.to_f
    end

    def bounding?
      return true unless self.height.nil? && self.width.nil?
      false
    end
  end
end