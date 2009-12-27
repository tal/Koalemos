module Spruz
  module UniqBy
    def uniq_by(&b)
      b ||= lambda { |x| x }
      inject({}) { |h, e| h[b[e]] ||= e; h }.values
    end
  end
  
  module ::Enumerable
    if method_defined?(:uniq_by)
      warn "#{self}#uniq_by already defined, didn't include at #{__FILE__}:#{__LINE__}"
    else
      include UniqBy
    end
  end
  
  class ::Array
    if method_defined?(:uniq_by)
      warn "#{self}#uniq_by already defined, didn't include at #{__FILE__}:#{__LINE__}"
    else
      include UniqBy
      
      def uniq_by!(&b)
        replace uniq_by(&b)
      end
    end
  end
    
end