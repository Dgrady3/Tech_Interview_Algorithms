# Write a program to find the largest integer in an array of integers.
#Then print out the index location of the largest int

def maxout(arr)
  max = 0
  location = 0

  arr.each_with_index do |n, index|
    if n > max
      max = n
      location = index
    end
  end
    p max
    p location
end

arr = [1,3,200000,9,-10]

maxout(arr)
