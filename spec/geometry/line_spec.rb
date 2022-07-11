RSpec.describe Geometry::Line do
  context "Line entity" do
    it "should be initialised with two cartesian coordinate points" do
      point_one = Geometry::Point.new(1, 2)
      expect { Geometry::Line.new(point_one, point_one) }.not_to raise_error
    end
  end
end