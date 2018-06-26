# Let's call an array A a mountain if the following properties hold:
#
# A.length >= 3
# There exists some 0 < i < A.length - 1 such that A[0] < A[1] < ... A[i-1] < A[i] > A[i+1] > ... > A[A.length - 1]
# Given an array that is definitely a mountain, return any i such that A[0] < A[1] < ... A[i-1] < A[i] > A[i+1] > ... > A[A.length - 1].
#
# Example 1:
#
# Input: [0,1,0]
# Output: 1
# Example 2:
#
# Input: [0,2,1,0]
# Output: 1
def peak_index_in_mountain_array(a)
  max = 0
  max_idx = 0
  a.each_with_index do |num, idx|
    max, max_idx = num, idx if num > max && a[idx - 1] < num && a[idx - 1] < num
  end
  max_idx
end
