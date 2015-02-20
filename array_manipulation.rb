# Suppose you have the following array

# stuff = [:dog,:cat,:orange,:banana]
# 1 How can you slice this array to create a new array [:cat,:orange]
# 2 Add the element :apple on to the end of the array.
# 3 Now take :apple back off again
# 4 Add the element :fish to the start of the array.
# 5 Now remove the element :fish.

# 1
# stuff = [:dog,:cat,:orange,:banana]
# stuff.slice!(0) && stuff.slice!(-1)
# puts stuff

# 2
# stuff = [:dog,:cat,:orange,:banana]
# p stuff << (:apple)

# 3
# stuff = [:dog,:cat,:orange,:banana]
# stuff << (:apple)
# stuff.pop
# p stuff

# 4
# stuff = [:dog,:cat,:orange,:banana]
# p stuff.unshift(:fish)

# 5
# stuff = [:dog,:cat,:orange,:banana]
# stuff.unshift(:fish)
# stuff.shift
# p stuff
