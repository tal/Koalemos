module Koalemos # :nodoc:
  module HashUnion
    # Reverse merge
    #   h1 = {:foo => 'foo',:bar => 'bar'}
    #   h1 |= {:foo => 'none',:baz => 'baz'}
    #   h1.should == {:foo => 'foo',:bar => 'bar',:baz => 'baz'} #=> true
    def |(other)
      other = other.to_hash if other.respond_to?(:to_hash)
      other.merge(self)
    end
  end
  
  class ::Hash # :nodoc:
    if method_defined?(:|)
      warn "#{self}#| already defined, didn't include at #{__FILE__}:#{__LINE__}"
    else
      include HashUnion
    end
  end
end