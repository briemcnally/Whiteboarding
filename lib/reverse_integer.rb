# Given a 32-bit signed integer, reverse digits of an integer.
#
# Example 1:
# Input: 123
# Output: 321
# Example 2:
#
# Input: -123
# Output: -321
# Example 3:
#
# Input: 120
# Output: 21
# Note:
# Assume we are dealing with an environment which could only store integers
# within the 32-bit signed integer range: [−231,  231 − 1].
# For the purpose of this problem, assume that your function returns 0
# when the reversed integer overflows.

def reverse(x)
  negative = true if x < 0
  reversed = x.abs.to_s.split("").reverse
  if reversed[0] == "0"
    new = reversed[1..-1].join.to_i
  else
    new = reversed.join.to_i
  end

  new = new * -1 if negative == true
  return 0 if new < (-2 ** 31) || new > ((2 ** 31) - 1)
  new
end
