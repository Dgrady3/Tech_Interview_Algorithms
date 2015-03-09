# Testing for exceptions is tricky business.
# Refactor the spec below to use the raise_error matcher with an expect block.

describe Zombie do
  it 'raises a Zombie::NotSmartEnoughError if not able to make a decision' do
    zombie = Zombie.new
    begin
      zombie.make_decision!
    rescue Zombie::NotSmartEnoughError => e
      e.should be_an_instance_of(Zombie::NotSmartEnoughError)
    end
  end
end

# solved below #

describe Zombie do
  it 'raises a Zombie::NotSmartEnoughError if not able to make a decision' do
    zombie = Zombie.new
    expect {zombie.make_decision!}.to raise_error(
     Zombie::NotSmartEnoughError
    )
  end
end
