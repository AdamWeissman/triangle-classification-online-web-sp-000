
class Triangle
  attr_reader :a, :b, :c
  def initialize(side_a, side_b, side_c)
    @a = side_a
    @b = side_b
    @c = side_c
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end
  
  #def validate_triangle this doesn't work
  #  real_triangle = [a, b, c].sort
  #  if (real_triangle[0] <= 0) || (real_triangle[2] > (real_triangle[0] + real_triangle[1]))
    #  raise TriangleError
    #end
  #end

  def validate_triangle
    condition_1 = (a + b > c)
    condition_2 = (a + c > b)
    condition_3 = (b + c > a)
    real_triangle = [condition_1, condition_2, condition_3]

    [a, b, c].each do |num|
      raise TriangleError if num <= 0 || real_triangle.include?(false)
    end
    
=begin

def validate_triangle
      condition_1 = (a + b > c)
      condition_2 = (a + c > b)
      condition_3 = (b + c > a)
      real_triangle = [condition_1, condition_2, condition_3]

      raise TriangleError if real_triangle.include?(false)
      [a, b, c].each do |num|
        raise TriangleError if num <= 0
      end
    end


=end
    
    
    #[a, b, c].each do |num|
          #real_triangle << false if num <= 0 
    #raise TriangleError if real_triangle.include? (false)
  end
  
  
  
  

  class TriangleError < StandardError
  end

end
