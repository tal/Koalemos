module Koalemos
  module NumToTime
    def minute
      self * 60
    end
    alias_method :minutes, :minute

    def hour
      self * 3600
    end
    alias_method :hours, :hour

    def day
      self * 86400
    end
    alias_method :days, :day

    def week
      self * 604800
    end
    alias_method :weeks, :week

    def month
      self * 2592000
    end
    alias_method :months, :month

    def year
      self * 31536000
    end
    alias_method :years, :year

    def ago
      Time.now - to_i
    end

    def from_now
      Time.now + to_i
    end

    def to_time
      Time.at(to_i)
    end
  end
  
  class ::Numeric
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