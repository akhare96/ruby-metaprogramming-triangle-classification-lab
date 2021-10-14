class Triangle

  attr_accessor :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if x + y <= z || x + z <= y || y + z <= x || [x, y, z].any? {|a| a <= 0}
        raise TriangleError
    elsif x == y && y == z
      :equilateral
    elsif x == y || y == z || x == z
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError

  end

end
