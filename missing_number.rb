# Suppose you have an array of 99 numbers.
# The array contains the digits 1 to 100 with one digit missing.
# Describe an algorithm to compute the missing number.

def missing(array, data)
  array_total = 0
  data_total = 0
  array.each {|n| array_total += n}
  data.each {|n| data_total += n }
  p (data_total - array_total)
end

array = (1..9).to_a
data = (1..10).to_a

missing(array, data)
