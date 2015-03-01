# Update the spec so that whenever a tweet is created,
# we verify that email_tweeter is called on the tweet object.

describe Tweet do
  context 'after create' do
    let(:zombie) { Zombie.create(email: 'anything@example.org') }
    let(:tweet) { zombie.tweets.new(message: 'Arrrrgggghhhh') }

    it 'calls "email_tweeter" on the tweet' do
      pending
      tweet.save
    end
  end
end

### Added mock to line 24 below ###

describe Tweet do
  context 'after create' do
    let(:zombie) { Zombie.create(email: 'anything@example.org') }
    let(:tweet) { zombie.tweets.new(message: 'Arrrrgggghhhh') }

    it 'calls "email_tweeter" on the tweet' do
      tweet.should_receive(:email_tweeter)
      tweet.save
    end
  end
end
