# Write a function:
# def solution(a)
# that, given an array A of N integers, returns the smallest positive
# integer (greater than 0) that does not occur in A.
#
# For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5.
# Given A = [1, 2, 3], the function should return 4.
# Given A = [−1, −3], the function should return 1.
#
# Assume that:
#
# N is an integer within the range [1..100,000];
# each element of array A is an integer within the range [−1,000,000..1,000,000].
# Complexity:
# expected worst-case time complexity is O(N);
# expected worst-case space complexity is O(N) (not counting the storage required for input arguments).

def solution(arr)
  sorted_arr = arr.sort.uniq
  boundaries = (sorted_arr[0]..sorted_arr[-1]).to_a

  return 1 if sorted_arr[-1] <= 0
  return (sorted_arr[-1] + 1) if sorted_arr == boundaries
  result = (boundaries - sorted_arr)[0]
end 
