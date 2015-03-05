# It's possible to give a stub a name by passing it in
# as the first parameter to the stub method. Name your
# zombie and tweet stubs :zombie and :tweet.

describe ZombieMailer do
  context '#tweet' do
    let(:zombie) { stub(email: 'anything@example.org') }
    let(:tweet) { stub(message: 'Arrrrgggghhhh') }

    subject { ZombieMailer.tweet(zombie, tweet) }
    its(:from) { should include('admin@codeschool.com') }
    its(:to) { should include(zombie.email) }
    its(:subject) { should == tweet.message }
  end
end

### Changed line 21 & 22 to name the stub ###

describe ZombieMailer do
  context '#tweet' do
    let(:zombie) { stub(:zombie, email: 'anything@example.org') }
    let(:tweet) { stub(:tweet, message: 'Arrrrgggghhhh') }

    subject { ZombieMailer.tweet(zombie, tweet) }
    its(:from) { should include('admin@codeschool.com') }
    its(:to) { should include(zombie.email) }
    its(:subject) { should == tweet.message }
  end
end
