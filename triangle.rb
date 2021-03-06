# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  if ! (a in 1.. and b in 1.. and c in 1..) or (a + b <= c or b + c <= a or c + a <= b)
    return raise TriangleError.new "Ups!"
  end

  # WRITE THIS CODE
  if a == b && b == c && a == c
    :equilateral
  elsif a == b || b == c || a == c
    :isosceles 
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
