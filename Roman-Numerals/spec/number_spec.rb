require_relative './spec_helper.rb'
require_relative '../number.rb'

describe "to_Roman method" do 

  it "raises InvalidNumberError if the number is equal to zero or greater than 3999" do
    number = Number.new(4000)
    begin
      expect(number.to_Roman).to raise_error(InvalidNumberError)
      rescue InvalidNumberError => error
      error.message
    end   
  end

  it "raises" do
    number = Number.new(-799)
    begin
      expect(number.to_Roman).to raise_error
      rescue  => error
      puts error.inspect 
    end   
  end

  it "returns 'I' if the number is equal to 1" do
    number = Number.new(1)
    expect(number.to_Roman).to eq("I")
  end

  it "returns 'LXX' if the number is equal to 70" do
    number = Number.new(70)
    expect(number.to_Roman).to eq("LXX")
  end

  it "returns 'XIX' if the number is equal to 19" do
    number = Number.new(19)
    expect(number.to_Roman).to eq("XIX")
  end


  it "returns 'CCLIV' if the number is equal to 254" do
    number = Number.new(254)
    expect(number.to_Roman).to eq("CCLIV")
  end

  it "returns 'MMMCMXCIX' if the number is equal to 3999" do
    number = Number.new(3999)
    expect(number.to_Roman).to eq("MMMCMXCIX")
  end

  it "returns 'MM' if the number is equal to 2000" do
    number = Number.new(2000)
    expect(number.to_Roman).to eq("MM")
  end

end