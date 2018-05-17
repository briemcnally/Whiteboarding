# Given a matrix of integers and coordinates of a rectangular region within
# the matrix, find the sum of numbers falling inside the rectangle.

def matrix_region_sum(matrix, top_left_coords, bottom_right_coords)
  total_sum = 0

  (top_left_coords[0]..bottom_right_coords[0]).each do |row_idx|
    (top_left_coords[1]..bottom_right_coords[1]).each do |col_idx|
      total_sum += matrix[row_idx][col_idx]
    end
  end

  total_sum
end

# In this solution, we assume that the coords are in the format 
# (row_idx, col_idx). Our top_left_coords contain the lower bounds and
# our bottom_right_coords contain the upper bounds.
#
# With this knowledge, we can iterate through the inclusive range from
# top_left_coords[0]..bottom_right_coords[0] and
# top_left_coords[1]..bottom_right_coords[1] to find all of the elements
# that are within the specified rectangle and add them to our total sum.
#
# Time complexity: O(number of rows * number of columns).
# This is the best possible because we have to add every one of the numbers
# in the rectangle. Anything less would require us to skip numbers.
