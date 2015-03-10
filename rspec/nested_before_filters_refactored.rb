Refactor our last example so that there is another context called
'with a dummy zombie'. Move the zombie.iq before filter inside this context.

describe Zombie do
  let(:zombie) { Zombie.new }
  before { zombie.iq = 0 }
  subject { zombie }

  it { should be_dummy }

  context 'with a smart zombie' do
    before { zombie.iq = 3 }
    it { should_not be_dummy }
  end
end

# added before filter to new dummy context #

describe Zombie do
  let(:zombie) { Zombie.new }
  before { zombie.iq = 0 }
  subject { zombie }

  it { should be_dummy }

  context 'with a smart zombie' do
    before { zombie.iq = 3 }
    it { should_not be_dummy }
  end

  context 'with a dummy zombie' do
     before { zombie.iq = 0 }
  end
end
