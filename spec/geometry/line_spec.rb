RSpec.describe Geometry::Line do
  context "Line entity" do
    it "should be initialised with two cartesian coordinate points" do
      point_one = Geometry::Point.new(1, 2)

      expect { Geometry::Line.new(point_one, point_one) }.not_to raise_error
    end

    it "should get the length of the line starting from 0,0 till 0,2 as 2.0" do
      point_one = Geometry::Point.new(0, 0)
      point_two = Geometry::Point.new(0, 2)

      expect(Geometry::Line.new(point_one, point_two).get_length).to be 2.0
    end
  end
end