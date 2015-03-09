# We're verifying the count to be greater than 0,
# but we really could be using a have matcher here
# to verify that the zombie has exactly one tweet.
# Refactor the spec to use the have matcher.

describe Zombie do
  it 'increases the number of tweets' do
    zombie = Zombie.new(name: 'Ash')
    zombie.tweets.new(message: "Arrrgggggggghhhhh")
    zombie.tweets.count.should > 0
  end
end

# solved below #

describe Zombie do
  it 'increases the number of tweets' do
    zombie = Zombie.new(name: 'Ash')
    zombie.tweets.new(message: "Arrrgggggggghhhhh")
    zombie.should have(1).tweet
    end
end
