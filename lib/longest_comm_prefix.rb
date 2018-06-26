# Write a function to find the longest common prefix string amongst an array of strings.
#
# If there is no common prefix, return an empty string "".
#
# Example 1:
#
# Input: ["flower","flow","flight"]
# Output: "fl"
# Example 2:
#
# Input: ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.
# Note:
#
# All given inputs are in lowercase letters a-z.

def longest_common_prefix(strs)

  return '' if strs.empty?

  str, count = strs[0], 0

  str.chars.each_with_index do |ch, idx|
    break if strs[1..-1].any? { |s| s[idx] != ch }
    count += 1
  end
  str.slice(0, count)
end

longest_common_prefix(["flower","flow","flight"])
longest_common_prefix(["dog","racecar","car"])
