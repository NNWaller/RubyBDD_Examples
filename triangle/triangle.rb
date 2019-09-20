class Triangle
    attr_reader :side_1, :side_2, :side_3

    def initialize(side_1, side_2, side_3)
        @side_1 = side_1
        @side_2 = side_2
        @side_3 = side_3
    end

    def valid_triangle
        
        if !((side_1 + side_2) >= side_3 && (side_2 + side_3) >= side_1 && (side_3 + side_1) >= side_2)
             raise TriangleError
        
        elsif side_1 == side_2 && side_1 == side_3
            "equilateral"

        elsif 
            side_1 == side_2 || side_1 == side_3 || side_2 == side_3
            "isosceles"

        elsif 
            side_1 != side_2 && side_2 != side_3 && side_3 != side_1
            "scalene"
        end
    end
    
end 

class TriangleError < StandardError

    def message
        "Triangle cannot exist!  The sum of the lengths of any two sides of a triangle always equals or exceeds the length of the third side."
    end

end 