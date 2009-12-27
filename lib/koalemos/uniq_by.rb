module Koalemos # :nodoc:
  module UniqBy
    # Finds unique values in an array based on a block passed
    #   [ {:key => 'foo'},
    #    {:key => 'foo'},
    #    {:key => 'bar'},
    #    {:key => 'baz'},
    #    {:key => 'bbaz'}].uniq_by{|a| a[:key]} #=> [{:key=>"bbaz"}, {:key=>"baz"}, {:key=>"foo"}, {:key=>"bar"}]
    def uniq_by(&b)
      b ||= lambda { |x| x }
      inject({}) { |h, e| h[b[e]] ||= e; h }.values
    end
  end
  
  module ::Enumerable# :nodoc:
    if method_defined?(:uniq_by)
      warn "#{self}#uniq_by already defined, didn't include at #{__FILE__}:#{__LINE__}"
    else
      include UniqBy
    end
  end
  
  class ::Array # :nodoc:
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