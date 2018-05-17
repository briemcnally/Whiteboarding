# Given arr1 and arr2, find the intersection of both sets.
# It should be trivial to write an O(n**2) solution. Use sorting to solve in O(nlog(n)).
# Next, improve this to O(n) time (maybe use a non-array datastructure).

# O(n**2) solution
def intersection1(arr1, arr2)
  arr1.uniq.select { |el| arr2.include?(el) }
end

# We have a loop through arr1 to select which contributes O(n) and a
# nested arr2.include? which contributes another O(n) for a total of O(n**2).

# O(nlogn) solution
def intersection2(arr1, arr2)
  arr1, arr2, idx1, idx2 = arr1.sort, arr2.sort, 0, 0

  intersection = []
  while idx1 < arr1.length && idx2 < arr2.length
    case arr1[idx1] <=> arr2[idx2]
    when -1
      idx1 += 1
    when 0
      intersection << arr1[idx1]
      idx1 += 1
      idx2 += 1
    when 1
      idx2 += 1
    end
  end
  intersection
end

# We start off by sorting which is an O(nlogn) operation. From there we
# can step through the array, keeping a separate indices for our position
# in arr1 and arr2, adding to our result array when we find an intersecting
# element (this is an O(n) operation). Our total time complexity is O(nlogn).

# O(n) solution
def intersection3(arr1, arr2)
  intersection = []
  set_1 = arr1.to_set
  arr2.each do |el|
    intersection << el if set_1[el]
  end

  intersection
end
#
# In our final solution, we use a set to keep track of all the seen elements
# in arr1. This is an O(n) operation. In a separate loop, we iterate
# through arr2, checking to see if we've seen each element. Because we've
# added everything from arr1 to a hash, lookup time is O(1), for a total
# time complexity of O(n), and additional space complexity of O(n).
