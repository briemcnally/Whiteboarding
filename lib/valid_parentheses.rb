# Given a string containing just the characters '(', ')', '{', '}', 
# '[' and ']', determine if the input string is valid.
#
# An input string is valid if:
#
# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Note that an empty string is also considered valid.
#
# Example 1:
# Input: "()"
# Output: true
# Example 2:
# Input: "()[]{}"
# Output: true
# Example 3:
# Input: "(]"
# Output: false
# Example 4:
# Input: "([)]"
# Output: false
# Example 5:
# Input: "{[]}"
# Output: true

def is_valid(str)
  stack  = []
  parens = { '(' => ')', '[' => ']', '{' => '}'}
  left   = parens.keys
  right  = parens.values

  str.each_char do |char|
    if left.include? char
      stack << char
    elsif right.include? char
      return false if stack.empty? || (parens[stack.pop] != char)
    end
  end

  return stack.empty?
end
