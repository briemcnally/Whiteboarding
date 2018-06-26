# Write a program that outputs the string representation of numbers from 1 to n.
# But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”. For numbers which are multiples of both three and five output “FizzBuzz”.
# Example:
#
# n = 15,
#
# Return:
# [
#     "1",
#     "2",
#     "Fizz",
#     "4",
#     "Buzz",
#     "Fizz",
#     "7",
#     "8",
#     "Fizz",
#     "Buzz",
#     "11",
#     "Fizz",
#     "13",
#     "14",
#     "FizzBuzz"
# ]
def fizz_buzz(n)
  result = []
  (1..n).to_a.each do |num|
    if num % 3 == 0 && num % 5 == 0
      result << "FizzBuzz"
    elsif num % 3 == 0 && num % 5 != 0
      result << "Fizz"
    elsif num % 3 != 0 && num % 5 == 0
      result << "Buzz"
    else
      result << num.to_s
    end
  end

  result
end
