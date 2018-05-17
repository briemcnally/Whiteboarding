# Write a function that takes an array of integers and returns their sum. Use recursion.

def sum_rec(nums)
  return 0 if nums.empty?
  nums[0] + sum_rec(nums.drop(1))
end
