#
# Write a method that takes a string as input. It should return true if
# the input is a valid IPv4 address (ie. anything between 0.0.0.0 and
# 255.255.255.255 is valid).

def valid_ip?(str)
  return false unless str =~ /^\d+(\.\d+){3}$/
  nums = str.split(".").map(&:to_i)
  nums.all? {|num| num >= 0 && num <= 255}
end
