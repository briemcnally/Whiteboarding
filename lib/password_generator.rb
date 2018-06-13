#
# Given four variables equal to a string of uppercase letters, lowercase
# letters, numbers, and symbols, generate a random password based on a number provided.
# Examples:
#
# generate_password(7) => 'Hj3@HB!'
# generate_password(5) => '34567'
# generate_password(2) => 'aC'
# generate_password(4) => '!#$n'
#
# Additional constraints:
# The user should be able to filter how he/she would like the password to
# be randomly generated. For example, if the user only wanted a randomly
# generated password consisting of numbers and uppercase letters,
# generate_password(5) => '2Aa!5' would be invalid because it contains lowercase letters and symbols
# generate_password(5) => '2A56B' would be a valid example
#
# Finally, when generating this password with filters, we need to
# guarantee that there will be AT LEAST 1 character from each filter.
# For example, if we filter the password to generate a password of just
# uppercase letters and numbers, there's still a chance that the password
# could generate a string of only numbers or only uppercase letters.
#
# generate_password(5) => '88324' would be invalid because it only contains numbers
# generate_password(5) => 'GHJLK' would also be invalid because it only contains uppercase letters
# generate_password(5) => '5A555' works because there's at least one number and one uppercase letter
# generate_password(6) => 'BC7HJ' works because there's at least one number and one uppercase letter


LETTERS = ("A".."Z").to_a
NUMBERS = (1..9).to_a
SYM = %w(. ? ! @ # $ % & ^ *)

def generate_password(length, upper, lower, num, syms)
  result = []

  while result.length < length
    result << LETTERS.sample if upper
    result << LETTERS.sample.downcase if lower
    result << NUMBERS.sample if num
    result << SYM.sample if syms
  end

  return result.shuffle.join
end

generate_password(5, true, true, true, true )
