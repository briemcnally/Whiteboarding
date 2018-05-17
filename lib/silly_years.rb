# Write a function that takes a year (four digit integer) and returns an
# array with the 10 closest subsequent years that meet the following
# condition: the first two digits summed with the last two digits are
# equal to the middle two digits. E.g.,
#
# 1978 => 19 + 78 = 97
# 2307 => 23 + 07 = 30


def silly_years(year)
  years = []
  until years.length == 10
    digits = year.to_s

    first_two, middle_two, last_two = [
      digits[0..1], digits[1..2], digits[2..-1]
    ].map { |pair| pair.to_i }

    years << year if (first_two + last_two) == middle_two
  end

  years
end
