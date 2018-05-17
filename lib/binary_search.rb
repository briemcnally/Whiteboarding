# Implement binary search.

def binary_search(array, target)
  return nil if array.count == 0

  midpoint = array.length / 2
  case target <=> array[midpoint]
  when -1
    binary_search(array.take(midpoint), target)
  when 0
    midpoint
  when 1
    sub_problem = binary_search(array.drop(midpoint + 1), target)
    sub_problem.nil? ? nil : (midpoint + 1) + sub_problem
  end
end

# Time complexity O(log(n))
