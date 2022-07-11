module Geometry
  class Line
    def initialize(point_one, point_two)
      @point_one = point_one
      @point_two = point_two
    end

    def get_length
      @point_one.distance_from(@point_two)
    end
  end
end