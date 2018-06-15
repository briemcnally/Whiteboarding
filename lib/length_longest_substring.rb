# Given a string, find the length of the longest substring without repeating characters.
#
# Examples:
#
# Given "abcabcbb", the answer is "abc", which the length is 3.
#
# Given "bbbbb", the answer is "b", with the length of 1.
#
# Given "pwwkew", the answer is "wke", with the length of 3. Note that the
# answer must be a substring, "pwke" is a subsequence and not a substring.


def length_of_longest_substring(s)
  subs = []
  s.length.times do |start_pos|
    (2..(s.length - start_pos)).each do |len|
      substr = s[start_pos...(start_pos + len)]
      subs << substr
    end
  end
  other = []
  subs.each do |sub|
    sub.split("").uniq
    other << sub.split("").uniq.join if !other.include?(sub.split("").uniq)
  end

  other.sort_by{|v| v.length}.last
  # subs.sort.last.split("").uniq.join
end

length_of_longest_substring("abcabcbb")
length_of_longest_substring("bbbbb")
length_of_longest_substring("pwwkew")
