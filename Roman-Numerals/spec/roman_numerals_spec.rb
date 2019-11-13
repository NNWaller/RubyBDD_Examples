require_relative './spec_helper.rb'
require_relative '../roman_numerals.rb'

describe "to_Roman method" do 
  it "returns 'I' if the arabic_number is equal to 1" do
    roman_numerals = Roman_Numerals.new
    expect (roman_numerals.to_Roman(1)).to eq("I")
  end
end