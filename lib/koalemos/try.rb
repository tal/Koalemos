module Koalemos # :nodoc:
  unless Object.method_defined?(:try)
    class Object# :nodoc
      alias_method :try, :__send__ # :nodoc
    end
    
    class ::NilClass# :nodoc
      # Trys to call a method (alias for +send+)
      def try(*a)
        nil
      end
    end
  end#unless
end