# Given a string of characters change all occurrences of two or more
# consecutive 'e's with a single 'e'.
#
# Example:
# Input: 'asdheeeeskaeeeleee'
# Output: 'asdheskaele'

def consecutive_letters(string)
  output = ""

  string.split("").each_with_index do |char, idx|
    output += char if string[idx + 1] != char
  end

  output
end
