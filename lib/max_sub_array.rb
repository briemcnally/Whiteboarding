def max_sub_array(sums)
   return sums.sort[-1] if sums.length < 2
  symm_subs = {}

  sums.length.times do |start_pos|
    (1..(sums.length - start_pos)).each do |len|
      substr = sums[start_pos...(start_pos + len)]
      symm_subs[substr.reduce(:+)] = substr
    end
  end
symm_subs.keys.max
end 
