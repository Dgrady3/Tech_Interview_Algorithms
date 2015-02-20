# Write a function for the following
# For the numbers 1-100. Print the numbers to the screen, but....
# If a number is divisible by 15, have the screen print "Fizz-buzz"
# If a number is only divisible by 5, print fizz
# If a number is only divisible by 3, print buzz

def fizzbuzz(n)
  n.each do |n|
    if n % 5 == 0 && n % 3 == 0
     p "Fizz-buzz"
    elsif n % 5 == 0
     p "fizz"
    elsif n % 3 == 0
     p "buzz"
    else
     p n
    end
  end
end

numbers = (1..100)

fizzbuzz(numbers)
