# In the following example, we're checking to see that a method
# changes the state of a zombie. We need to make sure the zombie was
# in a specific state before and after the method is called.
# Refactor the following example to use the expect and change syntax.

describe Zombie do
  it 'gains 3 IQ points by eating brains' do
    zombie = Zombie.new
    zombie.iq.should == 0
    zombie.eat_brains
    zombie.iq.should == 3
  end
end

# formated below #

describe Zombie do
  it 'gains 3 IQ points by eating brains' do
    zombie = Zombie.new
    expect {zombie.eat_brains}.to change {zombie.iq}.by(3)
  end
end
