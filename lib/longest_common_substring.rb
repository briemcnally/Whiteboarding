# Write a function, longest_common_substring(str1, str2) that takes two
# strings and returns the longest common substring. A substring is defined
# as any consecutive slice of letters from another string.
#
# Bonus: solve it in O(m * n) using O(m * n) extra space.

def longest_common_substring(str1, str2)
  longest_substring = ""

  start_index = 0
  while start_index < str1.length
    len = longest_substring.length + 1

    while (start_index + len) <= str1.length
      end_index = start_index + len
      substring = str1[start_index...end_index]
      longest_substring = substring if str2.include?(substring)

      len += 1
    end

    start_index += 1
  end

  longest_substring
end

# Time complexity O(m * n**2)
# n is the length of str1 (squared bc of two nested while loops )
# m is the length of str2 (in while loop check for inclusion with 0(m))

# Bonus using dynamic programming
