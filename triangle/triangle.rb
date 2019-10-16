class Triangle
    attr_reader :side_1, :side_2, :side_3

    def initialize(side_1, side_2, side_3)
        @side_1 = side_1
        @side_2 = side_2
        @side_3 = side_3
    end

    def classify_triangle
        case 
        
        when triangle_not_valid 
            raise InvalidTriangleError
        
        when triangle_has_all_sides_equal
            "equilateral"

        when triangle_has_only_two_sides_equal
            "isosceles"

        when triangle_has_no_sides_equal
            "scalene"
        end
    end

    private 

    def triangle_not_valid
        !((side_1 + side_2) >= side_3 && (side_2 + side_3) >= side_1 && (side_3 + side_1) >= side_2) ||
        (side_1 <= 0 || side_2 <= 0 || side_3 <= 0 )
    end    

    def triangle_has_all_sides_equal
        side_1 == side_2 && side_1 == side_3
    end

    def triangle_has_only_two_sides_equal
        side_1 == side_2 || side_1 == side_3 || side_2 == side_3
    end

    def triangle_has_no_sides_equal
        side_1 != side_2 && side_2 != side_3 && side_3 != side_1
    end
    
end 



class InvalidTriangleError < StandardError

    def message
        "Triangle cannot exist! The sum of the lengths of any two sides of a triangle always equals or exceeds the length of the remaining side. No sides can be less than or equal to zero."
    end

end                                                                              