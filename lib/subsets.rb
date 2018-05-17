# Write a function that takes an array and returns all of its subsets.
#  How many sets will it return?

def subsets(arr)
  return [[]] if arr.empty?

  val = arr[0]
  subs = subsets(arr.drop(1))
  new_subs = subs.map{ |sub| sub + val }

  subs + new_subs
end

# We can solve subsets recursively. We can think of the subsets of an array 
# of length n as all the subsets of the array without the first element
# (subsets(array.drop(1))) plus the same subsets with the first element
# added on to each one.
#
# Pseudocode Example:
#
# subsets(['a', 'b', 'c'])
# subs_without_a => [[], ['c'], ['b'], ['c', 'b']]
# subs_with_a => [['a'], ['c', 'a'], ['b', 'a'], ['c', 'b', 'a']]
# all_subs = subs_without_a + subs_with_a
# With this in mind, we can set our base case as a single empty subset ([[]]).
# We can then calculate the subsets of any array by finding the subsets
# of the array excluding the first element, and add them to the subsets
# of the array with the first element.
#
# We will finish with 2 ** n subsets, so at minimum our time complexity will be O(2**n).
