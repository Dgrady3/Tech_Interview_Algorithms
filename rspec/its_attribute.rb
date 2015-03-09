# Refactor the following code to use its but use the same matcher.

describe Zombie do
  it 'should have an iq of zero' do
    subject.iq.should == 0
  end
end

# refactored below #


describe Zombie do
  its(:iq) { should == 0 }
end
