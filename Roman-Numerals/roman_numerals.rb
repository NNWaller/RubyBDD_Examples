
  def to_Roman(arabic_number)

    roman_ones_hash = {1=> "I", 2=> "II", 3=> "III", 4=> "IV", 5=> "V", 6=> "VI", 7=> "VII", 8=> "VIII", 9=> "IX"}

    roman_tens_hash = {10=> "X", 20=> "XX", 30=> "XXX", 40=> "XL", 50=> "L", 60=> "LX", 70=> "LXX", 80=> "LXXX", 90=> "XC"}

    roman_hundreds_hash = {100=> "C", 200=> "CC", 300=> "CCC", 400=> "CD", 500=> "D", 600=> "DC", 700=> "DCC", 800=> "DCCC", 900=> "CM"}

    roman_thousands_hash = {1000=> "M", 2000=> "MM", 3000=> "MMM"}

    the_combined_letters = [ ]

    if arabic_number.digits.length == 4
      arabic_array = arabic_number.digits.reverse
      roman_thousands_hash.each do |k,v|
        if k == (arabic_array[0]*1000) && arabic_array[0] != 0
          the_combined_letters << v 
        end
      end

      roman_hundreds_hash.each do |k,v|
        if k == (arabic_array[1]*100) && arabic_array[1] != 0
          the_combined_letters << v 
        end
      end 

      roman_tens_hash.each do |k,v|
        if k == (arabic_array[2]*10) && arabic_array[2] != 0
          the_combined_letters << v 
        end
      end
      
      roman_ones_hash.each do |k,v|
        if k == (arabic_array[3]) && arabic_array[3] != 0
          the_combined_letters << v 
        end
      end
    end
      
    if arabic_number.digits.length == 3
      arabic_array = arabic_number.digits.reverse
      roman_hundreds_hash.each do |k,v|
        if k == (arabic_array[0]*100) && arabic_array[0] != 0
          the_combined_letters << v 
        end
      end 

      roman_tens_hash.each do |k,v|
        if k == (arabic_array[1]*10) && arabic_array[1] != 0
          the_combined_letters << v 
        end
      end
      
      roman_ones_hash.each do |k,v|
        if k == (arabic_array[2]) && arabic_array[2] != 0
          the_combined_letters << v 
        end
      end
    end 
      
    if arabic_number.digits.length == 2
      arabic_array = arabic_number.digits.reverse
      roman_tens_hash.each do |k,v|
        if k == (arabic_array[0]*10) && arabic_array[0] != 0
          the_combined_letters << v 
         end
      end
      
      roman_ones_hash.each do |k,v|
        if k == (arabic_array[1]) && arabic_array[1] != 0
          the_combined_letters << v 
        end
      end
    end 
      
    if arabic_number.digits.length == 1
      arabic_array = arabic_number.digits.reverse
      roman_ones_hash.each do |k,v|
        if k == (arabic_array[0]) && arabic_array[0] != 0
          the_combined_letters << v 
        end
       end
    end 

      the_combined_letters.join("")
      
  end
