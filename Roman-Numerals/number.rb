
  class Number
    attr_accessor :positive_arabic_number
  
    ROMAN_VALUES = [
    {1=> "I", 2=> "II", 3=> "III", 4=> "IV", 5=> "V", 6=> "VI", 7=> "VII", 8=> "VIII", 9=> "IX"},
    {10=> "X", 20=> "XX", 30=> "XXX", 40=> "XL", 50=> "L", 60=> "LX", 70=> "LXX", 80=> "LXXX", 90=> "XC"},
    {100=> "C", 200=> "CC", 300=> "CCC", 400=> "CD", 500=> "D", 600=> "DC", 700=> "DCC", 800=> "DCCC", 900=> "CM"},
    {1000=> "M", 2000=> "MM", 3000=> "MMM"},
  ]
  
    def initialize(positive_arabic_number)
      @positive_arabic_number = positive_arabic_number
    end 
      
    def to_Roman 
  
      length_of_arabic_number = positive_arabic_number.digits.length 
  
      case 
        when invalid_number
          raise InvalidNumberError
  
        when length_of_arabic_number == 4
          four_digit_arabic_number
  
        when length_of_arabic_number == 3
          three_digit_arabic_number
  
        when length_of_arabic_number == 2
          two_digit_arabic_number
  
        when length_of_arabic_number == 1
          one_digit_arabic_number
  
      end 
    end
  
  
    private 
  
    def invalid_number
      positive_arabic_number == 0 || positive_arabic_number > 3999
    end
  
    def four_digit_arabic_number
      the_combined_letters = [ ]
      arabic_array = positive_arabic_number.digits.reverse
      ROMAN_VALUES[3].detect do |k,v|
        if k == (arabic_array[0]*1000) && arabic_array[0] != 0
        the_combined_letters << v 
        end
      end
      ROMAN_VALUES[2].detect do |k,v|
        if k == (arabic_array[1]*100) && arabic_array[1] != 0
        the_combined_letters << v 
        end
      end 
      ROMAN_VALUES[1].detect do |k,v|
        if k == (arabic_array[2]*10) && arabic_array[2] != 0
        the_combined_letters << v 
        end
      end
      ROMAN_VALUES[0].detect do |k,v|
        if k == (arabic_array[3]) && arabic_array[3] != 0
        the_combined_letters << v 
        end
      end
     the_combined_letters.join("")
    end 
  
    def three_digit_arabic_number
      the_combined_letters = [ ]
      arabic_array = positive_arabic_number.digits.reverse
      ROMAN_VALUES[2].detect do |k,v|
        if k == (arabic_array[0]*100) && arabic_array[0] != 0
        the_combined_letters << v 
        end
      end 
      ROMAN_VALUES[1].detect do |k,v|
        if k == (arabic_array[1]*10) && arabic_array[1] != 0
        the_combined_letters << v 
        end
      end
      ROMAN_VALUES[0].detect do |k,v|
        if k == (arabic_array[2]) && arabic_array[2] != 0
        the_combined_letters << v 
        end
      end 
     the_combined_letters.join("")
    end 
  
    def two_digit_arabic_number
      the_combined_letters = [ ]
      arabic_array = positive_arabic_number.digits.reverse
      ROMAN_VALUES[1].detect do |k,v|
        if k == (arabic_array[0]*10) && arabic_array[0] != 0
        the_combined_letters << v 
        end
      end
      ROMAN_VALUES[0].detect do |k,v|
        if k == (arabic_array[1]) && arabic_array[1] != 0
        the_combined_letters << v 
        end
      end
     the_combined_letters.join("")
    end 
  
  
    def one_digit_arabic_number
      the_combined_letters = [ ]
      arabic_array = positive_arabic_number.digits.reverse
      ROMAN_VALUES[0].detect do |k,v|
        if k == (arabic_array[0]) && arabic_array[0] != 0
        the_combined_letters << v 
        end
      end
     the_combined_letters.join("")
   end

end

  
class InvalidNumberError < StandardError
  def message
    "The number must be between 1 and 3999."
  end
end    