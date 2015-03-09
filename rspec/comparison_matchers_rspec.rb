# Finish the example below to ensure that our tweet.
# status.length is less than or equal to 140 characters.
# Use a be matcher in your spec.

describe Tweet do
  it 'truncates the status to 140 characters' do
    tweet = Tweet.new(status: 'Nom nom nom' * 100)
  end
end



### solution below ###

describe Tweet do
  it 'truncates the status to 140 characters' do
    tweet = Tweet.new(status: 'Nom nom nom' * 100)
    tweet.status.length.should be <= 140
  end
end

### should be is a modifier
### the <= is a matcher of the modifier

describe Tweet do
  it 'truncates the status to 140 characters' do
    tweet = Tweet.new(status: 'Nom nom nom'* 100, profile_pic: true )
    tweet.status.length.should be <= 140
    tweet.profile_pic.should be true
  end
end

### Added another matcher ###

describe Tweet do
  it 'truncates the status to 140 characters' do
    tweet = Tweet.new(status: 'Nom nom nom'* 100, profile_pic: true, relationship: false )
    tweet.status.length.should be <= 140
    tweet.profile_pic.should be true
    tweet.relationship.should be_false
  end
end
