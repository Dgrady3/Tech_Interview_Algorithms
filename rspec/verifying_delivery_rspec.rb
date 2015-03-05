# We've verified that the ZombieMailer is being called
# with the correct parameters, but not that deliver is being
# called on the resulting mail object. Complete the new example
# by stubbing out the ZombieMailer.tweet method and having it return mail.
# Then make sure that the deliver method is called on the mail object.

describe Tweet do
  context 'after create' do
    let(:zombie) { Zombie.create(email: 'anything@example.org') }
    let(:tweet) { zombie.tweets.new(message: 'Arrrrgggghhhh') }
    let(:mail) { stub(:mail, deliver: true) }

    it 'calls "tweet" on the ZombieMailer' do
      ZombieMailer.should_receive(:tweet).with(zombie, tweet).and_return(mail)
      tweet.save
    end

    it 'calls "deliver" on the mail object' do
      pending
    end
  end
end


### refactored below ###

describe Tweet do
  context 'after create' do
    let(:zombie) { Zombie.create(email: 'anything@example.org') }
    let(:tweet) { zombie.tweets.new(message: 'Arrrrgggghhhh') }
    let(:mail) { stub(:mail, deliver: true) }
    let(:zombiemailer) { stub(tweet: 'arrrrgggghhhh' )}

    it 'calls "tweet" on the ZombieMailer' do
      ZombieMailer.should_receive(:tweet).with(zombie, tweet).and_return(mail)
      tweet.save
    end
    it 'calls "deliver on the mail object' do
      ZombieMailer.stub(tweet: mail)

      mail.should_receive(:deliver).and_return(true)
      tweet.save
    end
  end
end
