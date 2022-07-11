module Geometry
  class Point
    attr_reader :x
    attr_reader :y

    def initialize(x, y)
      @x = x
      @y = y
    end

    def distance_from(dest_point)
      if dest_point.is_a?(Geometry::Point)
        x_intercept = (x - dest_point.x).abs
        y_intercept = (y - dest_point.y).abs
        return Math.sqrt(x_intercept ** 2 + y_intercept ** 2).round(2)
      else
        raise("Point entity is expected")
      end
    end
  end
end