RSpec.describe Geometry::Point do
  context "Point entity" do
    it "should be initialised with two coordinates x,y" do
      expect { Geometry::Point.new(1, 2) }.not_to raise_error
    end
  end

  context "length for horizontal lines" do
    it "should return 1 for 1,2 and 2,2" do
      point_one = Geometry::Point.new(1, 2)
      point_two = Geometry::Point.new(2, 2)

      expect(point_one.distance_from(point_two)).to be 1.0
    end

    it "should return 2 for 0,0 and 2,0" do
      point_one = Geometry::Point.new(0, 0)
      point_two = Geometry::Point.new(2, 0)

      expect(point_one.distance_from(point_two)).to be 2.0
    end
  end

  context "length for vertical lines" do
    it "should return 3 for 1,1 and 1,4" do
      point_one = Geometry::Point.new(1, 1)
      point_two = Geometry::Point.new(1, 4)

      expect(point_one.distance_from(point_two)).to be 3.0
    end

    it "should return 4 for 0,0 and 0,4" do
      point_one = Geometry::Point.new(0, 0)
      point_two = Geometry::Point.new(0, 4)

      expect(point_one.distance_from(point_two)).to be 4.0
    end
  end

  context "length for square diagonal lines" do
    it "should return 2.83 for 0,0 and 2,2" do
      point_one = Geometry::Point.new(0, 0)
      point_two = Geometry::Point.new(2, 2)

      expect(point_one.distance_from(point_two)).to eq 2.83
    end
  end

  context "length for rectangular diagonal lines" do
    it "should return 5 for 0,1 and 3,5" do
      point_one = Geometry::Point.new(0, 1)
      point_two = Geometry::Point.new(3, 5)
      
      expect(point_one.distance_from(point_two)).to be 5.0
    end
  end
end