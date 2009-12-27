module Koalemos # :nodoc:
  module Odd
    # Returns boolean of whether the Numeric is odd or not
    def odd?
      self%2 == 1
    end
  end
  
  class ::Numeric # :nodoc:
    unless method_defined?(:odd?)
      include Odd
    end
  end
end