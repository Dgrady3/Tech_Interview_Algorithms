Rather than declaring our zombie directly in the subject block as
were doing here, move it into its own let named zombie and update
the subject to reference this new zombie.


describe Zombie do
  let(:tweet) { Tweet.new }
  subject { Zombie.new(tweets: [tweet]) }

  its(:tweets) { should include(tweet) }
  its(:latest_tweet) { should == tweet }
end

# refactored below #

describe Zombie do
  let(:tweet) { Tweet.new }
  let(:zombie) { Zombie.new(tweets: [tweet]) }
  subject {zombie}

  its(:tweets) { should include(tweet) }
  its(:latest_tweet) { should == tweet }
end



