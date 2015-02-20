# Write a function to take the following list
# and return one list of odd numbers and one list of even numbers:

ints = [1,21,53,84,50,66,7,38,9]

def divy_em_up_coach(arr)
  even = []
  odd = []
  arr.each do |n|
    if n % 2 == 0
      even << n
    else
      odd << n
    end
  end
  puts "The even numbers are #{even}"
  puts "The odd numbers are #{odd}"
end

divy_em_up_coach(ints)
