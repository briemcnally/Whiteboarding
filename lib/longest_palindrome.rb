# Write a function that will take a string and return the indices of the
# start/end of the longest palindrome it contains.
#
# Example:
# longest_palindrome('acapella') => [0, 2]

def longest_palindrome(string)
  best_palindrom_start = 0
  best_palindrom_len = 0

  0.upto(string.length - 1).each do |start|
    len = best_palindrom_len + 1
    while start + len <= string.length
      if is_palindrome?(string, start, len)
        best_palindrom_start, best_palindrom_len = start, len
      end
      len += 1
    end
  end
  [best_palindrom_start, best_palindrom_start + best_palindrom_len - 1]
end

def is_palindrome?(string, start, len)
  len.times do |i|
    if string[start + i] != string[(start + len - 1) - i]
      return false
    end
  end
  true
end
