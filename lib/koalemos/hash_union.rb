module Koalemos
  module HashUnion
    def |(other)
      other = other.to_hash if other.respond_to?(:to_hash)
      other.merge(self)
    end
  end
  
  class ::Hash
    if method_defined?(:|)
      warn "#{self}#| already defined, didn't include at #{__FILE__}:#{__LINE__}"
    else
      include HashUnion
    end
  end
end