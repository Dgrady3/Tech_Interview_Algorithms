# Add the implicit subject rather than
# creating a new Zombie and then simplify the example to use it { }

describe Zombie do
  it 'should not be a genius' do
    zombie = Zombie.new
    zombie.should_not be_genius
  end
end

# solved below #

describe Zombie do
  it { should_not be_genius }
end
