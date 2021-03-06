Add the focus tag to the 'with a smart zombie'
context block. This way we can run $ rspec --tag
focus and just run these examples.


describe Zombie do
  let(:zombie) { Zombie.new }
  subject { zombie }

  context 'with a dummy zombie' do
    before { zombie.iq = 0 }
    it { should be_dummy }
  end

  context 'with a smart zombie' do
    before { zombie.iq = 3 }
    it { should_not be_dummy }
  end
end

# added focus: true tag #

describe Zombie do
  let(:zombie) { Zombie.new }
  subject { zombie }

  context 'with a dummy zombie' do
    before { zombie.iq = 0 }
    it { should be_dummy }
  end

  context 'with a smart zombie', focus: true do
    before { zombie.iq = 3 }
    it { should_not be_dummy }
  end
end
