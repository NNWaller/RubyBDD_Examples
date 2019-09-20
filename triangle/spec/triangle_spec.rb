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

