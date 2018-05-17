# Given an array and index, find if it's possible to reach the value 0 by
# starting at the given index and repeatedly moving left/right by the
# distance found at array[index].
#
# Example:
# can_win?([1, 0, 1], 0)
# => true
#
# can_win?([1, 2, 0], 0)
# => false
# Hint: Use memoization to record where you've been.


#Recursive
def can_win?(arr, pos = 0, seen = {})
  return false if !pos.between?(0, arr.length - 1) || seen[pos]
  return true if arr[pos].zero?

  seen[pos] = true

  can_win?(arr, pos + arr[pos], seen) ||
  can_win?(arr, pos - arr[pos], seen)
end

# Our goal is to make it to a 0 by stepping forward or backwards by the
# value of our current position in the array.
#
# In our recursive solution, we keep track of our current position as well
# as a seen hash. In our base cases, we return false unless the current
# position falls within the bounds of the array or we have already seen the
# current position (this means our search through that position ended
# fruitlessly). We return true if the value at that position is 0. Before
# making the recursive call to can_win?, we set seen[pos] = true so we
# don't try to visit it again.
#
# We then make two recursive calls to can_win? passing in pos + arr[pos]
# (stepping forward by that position's value) and pos - arr[pos] (stepping
# backwards by that position's value) for our new positions. If either one
# of our recursive calls returns true, we've won!


#Iterative
def can_win(array, index)
  positions_to_try = [index]
  visited_positions = Array.new(array.length, false)
  visited_positions[index] = true

  until positions_to_try.empty?
    # We should probably use a queue for this.
    position = positions_to_try.shift
    value = array[position]

    if value == 0
      return true
    end

    [position + value, position - value].each do |pos|
      next if visited_positions[pos]
      next if (pos < 0 || array.length <= pos)

      positions_to_try << pos
      # This insures we don't add a position twice to our queue.
      visited_positions[pos] = true
    end
  end

  false
end

# We can also do this iteratively using a queue. In this case, we get our 
# current position, find the new positions by adding and subtracting the
# value, and throw them onto the back of the queue if they fall within the
# array and haven't been visited yet.
#
# Our solutions will take up O(n) time - worst case, we visit every item
# in the array before finding (or not finding) a 0.
