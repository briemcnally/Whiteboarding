#
# Write a method that takes a string as input. It should return true if
# the input is a valid IPv4 address (ie. anything between 0.0.0.0 and
# 255.255.255.255 is valid).

# Write a function that takes a string and returns
# whether or not the string is a valid IPv4 address.
# Try to avoid unnecessary computation when possible.
# 0.0.0.0 -> true
# 1.1.1   -> false
# 255.255.255.255 -> true
# 256.255.255.255 -> false

def valid_ip?(str)
  return false unless str =~ /^\d+(\.\d+){3}$/
  nums = str.split(".").map(&:to_i)
  nums.all? { |num| num >= 0 && num <= 255 }
end

def is_valid_ip?(string)
  arr = string.split(".").map(&:to_i)
  return false if arr.length != 4
  arr.each do |section|
    return false if section > 255 || section < 0
  end

  true
end
