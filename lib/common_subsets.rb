# Write a function that takes two arrays (arr1 and arr2) of integers and
# returns an array with all the subsets commmon to both.
#
# Don't generate all subsets of arr1 and arr2, which would take time
# exponential in the size of arr1/arr2 (and take O(2**n) memory as well).
# Instead, directly generate the subsets of both.

def common_subsets(arr1, arr2)
  subsets(intersection3(arr1, arr2))
end

def subsets(arr)
  return [[]] if arr.empty?

  val = arr[0]
  subs = subsets(arr.drop(1))
  new_subs = subs.map { |sub| sub + [val] }

  subs + new_subs
end

# We know that all common subsets between arr1 and arr2 are formed from 
# the intersecting elements, so we can utilize the intersection3 function
# that we wrote for the previous problem, and then generate the subsets of
# the intersection. Recall that our intersection3 function took O(n) time.
# We then generate the subsets of this intersection, which will take O(2**n)
# time, where n is the number of elements that intersect, for a total time
# complexity of O(2**n).
