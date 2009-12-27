module Koalemos
  class ::Numeric
    unless method_defined?(:commafy)
      def commafy
        to_s.reverse.scan(/(?:\d*\.)?\d{1,3}-?/).join(',').reverse
      end
    end
  end
  
  class ::Float
    unless method_defined?(:commafy)
      def commafy
        to_s.gsub(/\d+\./) do |s|
          s.reverse.scan(/(?:\d*\.)?\d{1,3}-?/).join(',').reverse
        end
      end
    end
  end
end