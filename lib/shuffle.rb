# You are given an array and a random number generator. Shuffle the array.

def shuffle(array)
  new_array = array.dup
  array.each_index do |index|
    rand_index = index + rand(array.length - index)
    new_array[index], new_array[rand_index] =
      new_array[rand_index], new_array[index]
  end
  new_array
end

# notice how each time it moves the number at `index` out of the
# way so it may be sampled later.

#Time complexity: O(n).
