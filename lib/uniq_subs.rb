# Write a method that finds all the unique substrings for a word.

# Note
# A results array and the include? method can be used to enforce
# uniqueness, but it adds the time cost of iterating through that array to
# check for inclusion. Keeping track of substrings in a set or hash is
# more efficient (O(1) lookup time).

require 'set'

def uniq_subs(str)
  subs = Set.new

  str.length.times do |i|
    (i...str.length).each do |j|
      subs.add(str[i..j])
    end
  end

  subs
end

# Time complexity: O(n^3)

# One "n" comes from the outer loop, a second from the inner loop, and a 
# third from the line subs.add(str[i..j]), which contains two operations
# that are linear in the length of str. First, slicing the string from i
# to j is linear in the length of the substring, and the average substring
# length grows linearly with the length of str. Additionally, hashing a
# string (which we do when adding it to a set) takes O(L) time, where L
# is the length of the hashed string, so the time to hash the average
# substring also grows linearly in the length of str.
