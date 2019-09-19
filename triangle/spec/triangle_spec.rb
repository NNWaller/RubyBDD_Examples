require_relative './spec_helper.rb'
require_relative '../triangle.rb'

RSpec.describe Triangle do
    it "creates a triangle object" do
        triangle = Triangle.new
        expect(triangle).to be_an_instance_of(Triangle)
    end
end
        