require_relative './spec_helper.rb'
require_relative '../roman_numerals.rb'

describe "to_Roman method" do 
  it "returns 'I' if the arabic_number is equal to 1" do
    arabic_number = 1
    expect(to_Roman(arabic_number)).to eq("I")
  end

  it "returns 'LXX' if the arabic_number is equal to 70" do
    arabic_number = 70
    expect(to_Roman(arabic_number)).to eq("LXX")
  end

  it "returns 'XIX' if the arabic_number is equal to 19" do
    arabic_number = 19
    expect(to_Roman(arabic_number)).to eq("XIX")
  end


  it "returns 'CCLIV' if the arabic_number is equal to 254" do
    arabic_number = 254
    expect(to_Roman(arabic_number)).to eq("CCLIV")
  end

  it "returns 'MMMCMXCIX' if the arabic_number is equal to 3999" do
    arabic_number = 3999
    expect(to_Roman(arabic_number)).to eq("MMMCMXCIX")
  end

  it "returns 'MM' if the arabic_number is equal to 2000" do
    arabic_number = 2000
    expect(to_Roman(arabic_number)).to eq("MM")
  end

end