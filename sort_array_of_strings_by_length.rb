# Most languages have a built in sort method that will sort an
# array of strings alphabetically. Demonstrate how to sort an array
# of strings by the length of each string, shortest strings first.

def sahort(array)
  array.sort_by! {|x| x.length}
  p array
end

arr = ["I", "am", "aaaaa", "Red Sox", "fan"]
sahort(arr)
