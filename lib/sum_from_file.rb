# Write a method that reads in a file of integers, one per line,
# and sums them. Skip the line if it begins with a "#".

def sum_from_file(filename)
  nums = File
    .readlines(filename)
    .select { |line| line[0] != "#" }
    .map(&:to_i)

  nums.inject(:+)
end

#File::readlines creates an array of each line of the file
#Array#select skips lines beginning with #
#then convert the remaining lines and find sum

#Time complexity O(n) where n is the number of lines in the file 
