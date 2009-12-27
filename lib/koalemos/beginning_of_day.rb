module Koalemos # :nodoc:
  class ::Time
    unless method_defined?(:beginning_of_day)
      # Returns a time object at midnight for the particular day
      def beginning_of_day
        ::Time.mktime(self.year,self.month,self.day)
      end

      def self.beginning_of_day
        t = ::Time.now
        ::Time.mktime(t.year,t.month,t.day)
      end
    end#unless
  end
end
