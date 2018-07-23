#Define the runtime of the following Code
def foo(array)
  sum = 0
  product = 1
  i = 0
  while i < array.length
    sum += array[i]
    i += 1
  end
  j = 0
  while j < array.length
    product *= array[j]
    j += 1
  end
  puts "#{sum} , #{product}"
end
# This takes 0(N) time. The fact that we iterate through the array twice doesnt matter

def print_pairs(array)
  i = 0
  while i < array.length
    j= 0
    while j < array.length
      num1 = array[i]
      num2 = array[j]
      puts "#{array[i]} , #{array[j]}"
      j+= 1
    end
    i+= 1
  end
end
#The inner loop has 0(N) iterations called N times so the runtime is 0(N**2)
#The code is printing all pairs(two-element sequences) There are 0(N**2) pairs

def print_pairs(array)
  i = 0
  while i < array.length
    j = i + 1
    while j < array.length
      num1 = array[i]
      num2 = array[j]
      puts "#{array[i]} , #{array[j]}"
      j+= 1
    end
    i+= 1
  end
end
#So for the first time through j runs for N-1 steps -> second time it
#runs for N-2 steps -> Then N-3 and so on
#Total number of steps is (N-1) + (N-2) + (N-3) + ... + 2 + 1
# == 1 + 2 + 3 + ... + N - 1
# == sum of 1 through N - 1
# == (n(n-1))/2 which is a runtime of 0(n**2)
# the code iterates through each pair of values for (i, j) where j is bigger than i
#There are N**2 total pairs and roughly half of those with have i < j and the
#remaining will have i > j which is roughly (N**2)/2 or O(n**2)
