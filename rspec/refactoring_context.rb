Notice how we have two expectations on a zombie object
with a high iq. We should clean this up by creating a
context for the high iq zombie and making that zombie
the subject of that context. Next, refactor the two expectations
to use the implicit subject that we learned about in the previous challenge.

describe Zombie do
  it { should_not be_genius }
  its(:iq) { should == 0 }

  it "should be_genius with high iq" do
    zombie = Zombie.new(iq: 3)
    zombie.should be_genius
  end

  it 'should have a brains_eaten_count of 1 with high iq' do
    zombie = Zombie.new(iq: 3)
    zombie.brains_eaten_count.should == 1
  end
end

# solved below #

describe Zombie do
  it { should_not be_genius }
  its(:iq) { should == 0 }

  context 'zombie is a genius' do
    subject { Zombie.new(iq: 3) }
    it {should be_genius }
    its(:brains_eaten_count) {should == 1 }
  end
end
