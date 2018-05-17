# Given a list of numbers in an array, replace all the numbers with
# the product of all other numbers. Do this in O(n) time without using division.

def productify(arr)
  products = Array.new(arr.length, 1)

  lower_prod = 1
  0.upto(arr.size - 1) do |i|
    products[i] = products[i] * lower_prod
    lower_prod = lower_prod * arr[i]
  end

  upper_prod = 1
  (arr.size - 1).downto(0) do |i|
    products[i] = products[i] * upper_prod
    upper_prod = upper_prod * arr[i]
  end

  products
end

# Each item products[j] in the result array can be thought of the product 
# of all elements where index i > j (the elements before i) times all the
# items where index i < j (the elements after i).
#
# How do we get the product of all the items before and after each element
# in O(n) time? We can first find the lower_product at each index i, which
# keeps track of the product of all the elements before i, and multiply
# each element products[i] in the result array by the current lower_product.
# We then step backwards through the indices to calculate the upper_product
# and multiply each element products[i] in the result array with the current
# upper_product.
#
# This allows us to calculate the product of all elements except for the
# element at arr[i] in O(n) time.
