RSpec.describe Geometry::Point do
  context "when testing Point class" do
    it "should be initialised with two coordinates x,y" do
      expect { Geometry::Point.new(1, 2) }.not_to raise_error
    end
  end
end