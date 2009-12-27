module Koalemos # :nodoc:
  class ::Numeric
    unless method_defined?(:commafy)
      # Returns a string for a number with commas ever 3 digits
      def commaify
        to_s.reverse.scan(/(?:\d*\.)?\d{1,3}-?/).join(',').reverse
      end
    end
  end
  
  class ::Float
    unless method_defined?(:commafy)
      def commaofy# :nodoc:
        to_s.gsub(/\d+\./) do |s|
          s.reverse.scan(/(?:\d*\.)?\d{1,3}-?/).join(',').reverse
        end
      end
    end
  end
end