# Given an array of integers, return all pairs that sum up to a specified
# value k. List the pairs in [min, max] order.

# pair_sum([1, 2, -1], 0)          # => #<Set: {[-1, 1]}>
# pair_sum([1, 2, -1, -1], 0)      # => #<Set: {[-1, 1]}>
# pair_sum([1, 2, -1, -1, -2], 0)  # => #<Set: {[-1, 1], [-2, 2]}>
# pair_sum([1, 2, -1, -1, -2], 1)  # => #<Set: {[-1, 2]}>
# pair_sum([1, 2, -1, -1, -2], -1) # => #<Set: {[-2, 1]}>


require 'set'

def pair_sum(arr, k)
  seen = Set.new
  pairs = Set.new

  arr.each do |num|
    # add in [min, max] order
    target = k - num

    if seen.include?(target)
      pairs.add(
        [[num, target].min, [min, target].max]
      )
    end

    # add `num` after checking; what if we put this before and there's
    # a single `0` is in the `arr`?
    seen.add(num)
  end
end
