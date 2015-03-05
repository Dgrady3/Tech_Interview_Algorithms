# Now let's write the example. Go ahead and instantiate
# a tweet, give it the status "Nom nom nom", and test the
# status has been properly set to this value using an == equality matcher.

describe Tweet do
  it 'can set status'
end


### solved below ###

describe Tweet do
  it 'can set status'
  tweet = Tweet.new
  tweet.status = 'Nom nom nom'
  tweet.status.should == "Nom nom nom"
end
