class Triangle
    attr_reader :side_1, :side_2, :side_3

    def initialize(side_1, side_2, side_3)
        @side_1 = side_1
        @side_2 = side_2
        @side_3 = side_3
    end

    def valid_triangle
        
        if triangle_object_violates_triangle_inequality_principle 
             raise TriangleError

        elsif any_side_less_than_or_equal_to_zero
             raise TriangleError
        
        elsif all_sides_equal
            "equilateral"

        elsif two_sides_equal
            "isosceles"

        elsif no_sides_equal
            "scalene"
        end
    end

    private 

    def triangle_object_violates_triangle_inequality_principle
        !((side_1 + side_2) >= side_3 && (side_2 + side_3) >= side_1 && (side_3 + side_1) >= side_2)
    end    

    def any_side_less_than_or_equal_to_zero
        side_1 <= 0 || side_2 <= 0 || side_3 <= 0 
    end

    def all_sides_equal
        side_1 == side_2 && side_1 == side_3
    end

    def two_sides_equal
        side_1 == side_2 || side_1 == side_3 || side_2 == side_3
    end

    def no_sides_equal
        side_1 != side_2 && side_2 != side_3 && side_3 != side_1
    end
    
end 



class TriangleError < StandardError

    def message
        "Triangle cannot exist!  The sum of the lengths of any two sides of a triangle always equals or exceeds the length of the third side."
    end

end                                                                              