require_relative './spec_helper.rb'
require_relative '../triangle.rb'

describe Triangle do
  describe "initialize method" do
    it "initializes a triangle object with 3 arguments" do
        triangle_1 = Triangle.new(3,4,7)
        expect(triangle_1).to be_an_instance_of(Triangle)
    end
  end
end

describe "side_1 method" do 
    it "returns an integer > 0" do
        triangle_1 = Triangle.new(3,4,7)
        expect(((triangle_1.side_1).is_a?(Integer)) && (triangle_1.side_1 > 0)).to be_truthy
    end
end

describe "side_2 method" do 
    it "returns an integer > 0" do
        triangle_1 = Triangle.new(3,4,7)
        expect(((triangle_1.side_2).is_a?(Integer)) && (triangle_1.side_2 > 0)).to be_truthy
    end
end

describe "side_3 method" do 
    it "returns an integer > 0" do
        triangle_1 = Triangle.new(3,4,7)
        expect(((triangle_1.side_3).is_a?(Integer)) && (triangle_1.side_3 > 0)).to be_truthy
    end
end