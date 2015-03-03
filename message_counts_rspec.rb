# Notice on the tweet.rb source that we're now emailing every
# zombie in the horde in our email_tweeter. Update the spec to
# verify that tweet is called exactly as many times as there are zombies.

describe Tweet do
  context 'after create' do
    let(:zombie) { Zombie.create(email: 'anything@example.org') }
    let(:tweet) { zombie.tweets.new(message: 'Arrrrgggghhhh') }
    let(:mail) { stub(:mail, deliver: true) }

    it 'calls "tweet" on the ZombieMailer as many times as there are zombies' do
      Zombie.stub(all: [stub, stub, stub])
      ZombieMailer.should_receive(:tweet).and_return(mail)
      tweet.save
    end
  end
end

### added code to line 27 (there are 3 stubs in line 28, so check for 3 tweets) ###

describe Tweet do
  context 'after create' do
    let(:zombie) { Zombie.create(email: 'anything@example.org') }
    let(:tweet) { zombie.tweets.new(message: 'Arrrrgggghhhh') }
    let(:mail) { stub(:mail, deliver: true) }

    it 'calls "tweet" on the ZombieMailer as many times as there are zombies' do
      Zombie.stub(all: [stub, stub, stub])
      ZombieMailer.should_receive(:tweet).exactly(3).times.and_return(mail)
      tweet.save
    end
  end
end
