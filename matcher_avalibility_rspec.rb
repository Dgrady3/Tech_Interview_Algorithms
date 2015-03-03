# Creating a custom matcher takes quite a few steps. We'll create one from scratch over the next few challenges.
# For starters, let's configure RSpec to include our new module only for models.


### Step one (lines added on 33) ###
module ValidateNumericalityOf
  class Matcher
    def initialize(attribute)
    end

    def matches?(model)
      false
    end

    def failure_message
      "Not implemented"
    end

    def negative_failure_message
      "Not implemented"
    end

    def description
      "Not implemented"
    end
  end

  def validate_numericality_of(attribute)
    pending
  end
end

RSpec.configure do |config|
  config.include ValidateNumericalityOf, type: :model
end


# In our spec, we're calling the validate_numericality_of
# method that is defined in our matcher. Update this method
# to return a new ValidateNumericalityOf::Matcher and update
# the initialize method to store the attribute.

module ValidateNumericalityOf
  class Matcher
    def initialize(attribute)
    end

    def matches?(model)
      false
    end

    def failure_message
      "Not implemented"
    end

    def negative_failure_message
      "Not implemented"
    end

    def description
      "Not implemented"
    end
  end

  def validate_numericality_of(attribute)
     Matcher.new(attribute)
  end
end

RSpec.configure do |config|
  config.include ValidateNumericalityOf, type: :model
end


# It's time to implement our matches? method which will do the real work here.
# We've done most of the work for you in the check_for_number method.
# Call it from the matches? method passing the model.


module ValidateNumericalityOf
  class Matcher
    def initialize(attribute)
      @attribute = attribute
    end

    def matches?(model)
      check_for_number model
    end

    def failure_message
      "Not implemented"
    end

    def negative_failure_message
      "Not implemented"
    end

    def description
      "Not implemented"
    end

    def check_for_number model
      model[@attribute] = "not a number"
      model.valid?
      model.errors[@attribute].include?("is not a number")
    end
  end

  def validate_numericality_of(attribute)
    Matcher.new(attribute)
  end
end

RSpec.configure do |config|
  config.include ValidateNumericalityOf, type: :model
end


