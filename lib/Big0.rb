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


def print_unordered_pairs(array1, array2)
  i = 0
  while i < array1.length
    j = 0
    while j < array2.length
      if array1[i] < array2[j]
        puts "#{array1[i]} , #{array2[j]} "
      end
      j+= 1
    end
    i+= 1
  end
end
# the if statement in the j's loop is 0(1) time bc it is just a sequence of constant time statements
# for each element of array1 the innerloops goes through b iterations
#where b = array2.length
# runtime is o(ab) where a = array1.lngth
# not 0(n **2) because they are two different inputs

def reverse(array)
  i = 0
  while i < (array.length / 2)
    other = array.length - i - 1
    temp = array[i]
    array[i] = array[other]
    array[other] = temp
    i += 1
  end
  array
end
#0(N) runtime
# the fact that it only goes through half of the array in terms of iterations doesn't
#impact the big O time


#Which of the following are equivalent to 0(N) and Why?
#O(N + P), where P < N/2
  #Here N is the dominant term so we can drop the O(P)
#O(2N)
  #We drop constants so this is just 0(N)
#0(N + log N)
  # O(N) dominants O(logN) so we can drop that
# O(N + M)
  # there is no extablished relationship between N and M so have to keep
  # both variables and this is not the same as O(N)


#Example 8
#What is the runtim of an algorithm that takes and array of strings
#sorts each string and then sorted the full array
  # s is the length of the longest string
  # a is the length of the array
  # sorting eahc string is O(s log s)
  # We do this for every string so thats O(a*s log s)
  # Now we have to sort all the strings
    # each string comparison takes O(s) and there are O( a log a) comparisons
    # so this wil take O(a *s log a) time
  # when you add these two parts you get
    # O(a * s(log a + log s))
