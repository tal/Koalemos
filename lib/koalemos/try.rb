module Koalemos
  unless Object.method_defined?(:try)
    class Object
      alias_method :try, :__send__
    end
    
    class ::NilClass
      def try(*a)
        nil
      end
    end
  end#unless
end