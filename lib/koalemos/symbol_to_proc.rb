module Koalemos # :nodoc:
  module ToProc
    # Converts a symbol to a proc
    def to_proc
      lambda do |obj, *args|
        obj.__send__(self, *args[0..-1])
      end
    end
  end
  
  class ::Symbol# :nodoc:
    unless method_defined?(:to_proc)
      include ToProc
    end
  end
end