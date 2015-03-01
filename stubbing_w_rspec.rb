# Refactor the spec below to use stubs rather than hitting the database.

describe ZombieMailer do
  context '#tweet' do
    let(:zombie) { Zombie.create(email: 'anything@example.org') }
    let(:tweet) { Tweet.create(message: 'Arrrrgggghhhh', zombie: zombie) }

    subject { ZombieMailer.tweet(zombie, tweet) }
    its(:from) { should include('admin@codeschool.com') }
    its(:to) { should include(zombie.email) }
    its(:subject) { should == tweet.message }
  end
end

### refactored below ###

describe ZombieMailer do
  context '#tweet' do
    ### changed, from initializing  (hitting the database) to creating a stub ###
    ### compare lines 5 & 6 to 21 & 22 ###
    let(:zombie) { stub(:zombie, email: 'anything@example.org') }
    let(:tweet) { stub(:tweet, message: 'Arrrrgggghhhh', zombie: zombie) }

    subject { ZombieMailer.tweet(zombie, tweet) }
    its(:from) { should include('admin@codeschool.com') }
    its(:to) { should include(zombie.email) }
    its(:subject) { should == tweet.message }
  end
end
