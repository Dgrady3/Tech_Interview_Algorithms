# Functional programming foundations in Ruby

# Start with an array of integers, 1 through 5.
# First, square all the elements in the array.
# Then, sum all the elements of the squared array.

def fun(array)
  puts "The original array is #{array}"
  a = array.map {|n| n**2}
  total = 0
  a.each {|n| total += n}
  puts "The squared numbers of the array are #{a}"
  puts "The total of the array is #{total}"
end

array = [1,2,3,4,5]

fun(array)
