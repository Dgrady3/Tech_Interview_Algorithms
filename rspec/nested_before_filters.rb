Weve decided to refactor out the smart zombie
into its own context. Add a before filter specific
to this context that will make our smart zombie spec pass.

describe Zombie do
  let(:zombie) { Zombie.new }
  before { zombie.iq = 0 }
  subject { zombie }

  it { should be_dummy }

  context 'with a smart zombie' do
    # Add 'before' here
    it { should_not be_dummy }
  end
end


# refactored below #

describe Zombie do
  let(:zombie) { Zombie.new }
  before { zombie.iq = 0 }
  subject { zombie }

  it { should be_dummy }

  context 'with a smart zombie' do
    before { zombie.iq = 3}
    it { should_not be_dummy }
  end
end
