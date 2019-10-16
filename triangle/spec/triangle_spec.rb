require_relative './spec_helper.rb'
require_relative '../triangle.rb'


  
  describe "classify_triangle method" do
    it "raises InvalidTriangleError if the sum of any two sides does not equal or exceed the length of remaining side" do
         triangle = Triangle.new(2,2,7)
         begin
           expect(triangle.classify_triangle).to raise_error(InvalidTriangleError)
           rescue InvalidTriangleError => error
           error.message
         end   
    end

    it "raises InvalidTriangleError if any side value is less than or equal to zero" do
        triangle = Triangle.new(-1,8,7)
        begin
          expect(triangle.classify_triangle).to raise_error(InvalidTriangleError)
          rescue InvalidTriangleError => error
          error.message
        end   
    end

    it "returns 'equilateral' if all sides of the triangle are equal" do
        triangle = Triangle.new(7,7,7)
        expect(triangle.classify_triangle).to eq("equilateral")
    end

    it "returns 'isosceles' if only two sides of the triangle are equal" do
      triangle = Triangle.new(5,5,7)
      expect(triangle.classify_triangle).to eq("isosceles")
    end

    it "returns 'scalene' if none of the sides of the triangle are equal" do
      triangle = Triangle.new(3,4,7)
      expect(triangle.classify_triangle).to eq("scalene")
    end
  end
