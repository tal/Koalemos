module Koalemos # :nodoc:
  # Blah blah blah
  module NumToTime
    def minute# :nodoc:
      self * 60
    end
    alias_method :minutes, :minute# :nodoc:

    def hour# :nodoc:
      self * 3600
    end
    alias_method :hours, :hour# :nodoc:

    def day# :nodoc:
      self * 86400
    end
    alias_method :days, :day# :nodoc:

    def week# :nodoc:
      self * 604800
    end
    alias_method :weeks, :week# :nodoc:

    def month# :nodoc:
      self * 2592000
    end
    alias_method :months, :month# :nodoc:

    def year# :nodoc:
      self * 31536000
    end
    alias_method :years, :year# :nodoc:
    
    # Changes a number into a Time object num seconds in the past
    #   60.ago #=> 1 minute ago
    def ago
      Time.now - to_i
    end
    
    # Changes a number into a Time object num seconds in the future
    #   60.ago #=> 1 minute from now
    def from_now
      Time.now + to_i
    end
    
    # Converts seconds to Epoch time
    def to_time
      Time.at(to_i)
    end
  end
  
  class ::Numeric # :nodoc:
    unless method_defined?(:minute)
      include NumToTime
    end
  end
  
  # class ::Float
  #   unless method_defined?(:minute)
  #     include NumToTime
  #   else
  #     warn "Time methods for #{self} already defined, didn't include at #{__FILE__}:#{__LINE__.to_i-2}"
  #   end
  # end
end