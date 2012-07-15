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

def illegal_triangle(*arr)
  if(arr[0] <= 0 || arr[1] <= 0 || arr[2] <= 0)
    fail TriangleError
  end
  arr.sort!
  raise TriangleError if arr[0] + arr[1] <= arr[2]
end

def triangle(a, b, c)
  # WRITE THIS CODE
  illegal_triangle(a,b,c)
  return :equilateral if(a == b && b == c)
  equalnum = 1
  if(a == b || a == c)
    equalnum += 1
  end
  if(b == c)
    equalnum += 1
  end
  return :isosceles if equalnum == 2
  :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
