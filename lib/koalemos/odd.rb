module Koalemos
  module Odd
    def odd?
      self%2 == 1
    end
  end
  
  class ::Numeric
    unless method_defined?(:odd?)
      include Odd
    end
  end
end