Ripping out duplicated specs into a shared example can help
DRY up your specs. Rip out the following specs into the shared
example group and update Zombie and Plant specs to use the shared example.

shared_examples_for 'the brainless' do
end

describe Zombie do
  let(:zombie) { Zombie.new }
  subject { zombie }

  it { should be_dummy }
  it { should_not be_genius }
end

describe Plant do
  let(:plant) { Plant.new }
  subject { plant }

  it { should be_dummy }
  it { should_not be_genius }
end


# shared examples and refactored to be DRY #

shared_examples_for 'the brainless' do
  it { should be_dummy }
  it { should_not be_genius }
end

describe Zombie do
  let(:zombie) { Zombie.new }
  subject { zombie }
  it_behaves_like "the brainless"
end

describe Plant do
  let(:plant) { Plant.new }
  subject { plant }
  it_behaves_like "the brainless"
end
