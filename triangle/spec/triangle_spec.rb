require_relative './spec_helper.rb'
require_relative '../triangle.rb'

describe Triangle do
  describe "initialize method" do
    let(:triangle_1) {Triangle.new(3,4,7)}

    it "initializes a triangle object with 3 values" do
      expect(triangle_1).to be_an_instance_of(Triangle)
    end

    it "has a value for side_1" do
      expect(triangle_1.side_1).to eq(3)
    end
   
    it "has a value for side_2" do
      expect(triangle_1.side_2).to eq(4)
    end

    it "has a value for side_3" do
      expect(triangle_1.side_3).to eq(7)
    end
  end
end

describe "valid_triangle method" do
    it "raises TriangleError if the triangle object violates triangle inequality principle" do
         triangle_2 = Triangle.new(2,2,7)
         begin
           expect(triangle_2.valid_triangle).to raise_error(TriangleError)
           rescue TriangleError => error
           error.message
         end   
    end

    it "raises TriangleError if any side value is less than or equal to zero" do
        triangle_3 = Triangle.new(0,0,0)
        begin
          expect(triangle_3.valid_triangle).to raise_error(TriangleError)
          rescue TriangleError => error
          error.message
        end   
   end

    it "returns the correct type of triangle if the triangle is valid" do
        triangle_1 = Triangle.new(3,4,7)
        expect(triangle_1.valid_triangle).to eq("scalene")
    end
end