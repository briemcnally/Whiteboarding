# Given an array of integers, return indices of the two numbers such that
# they add up to a specific target.
# You may assume that each input would have exactly one solution, and you
# may not use the same element twice.
# Example:
# Given nums = [2, 7, 11, 15], target = 9,
# Because nums[0] + nums[1] = 2 + 7 = 9, return [0, 1].

def two_sum(nums, target)
  nums.each_with_index do |num1, idx1|
    nums.each_with_index do |num2, idx2|
      next if idx1 == idx2
      return [idx1, idx2] if num1 + num2 == target
    end
  end
  return "Couldn't find target value"
end

# Time complexity : O(n^2)O(n2).
# For each element, we try to find its complement by looping through the
#  rest of array which takes O(n)O(n) time. Therefore, the time complexity
#  is O(n^2)O(n2).
#
# Space complexity : O(1)O(1).
