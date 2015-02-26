# Write an iterative function to reverse a string. Do the same thing as a recursive function.

def reverse_reverse(word)
  array = []
  word.each_char {|a| array << a }
  array.reverse!
  p array.join
end

reverse_reverse("Yankees suck")
