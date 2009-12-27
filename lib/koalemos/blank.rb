module Koalemos # :nodoc:# :nodoc:
  module Blank# :nodoc:
    # Allows for detection of whether an object contains something regardless of
    # what class the object is
    # @author Florian Frank
    module Object
      # Returns the !empty? or !self for any object
      def blank?
        respond_to?(:empty?) ? empty? : !self
      end
      
      # Returns !blank?
      def present?
        !blank?
      end
    end

    module NilClass# :nodoc:
      def blank?
        true
      end
    end

    module FalseClass# :nodoc:
      def blank?
        true
      end
    end

    module TrueClass# :nodoc:
      def blank?
        false
      end
    end

    module Array # :nodoc:
      def self.included(modul)
        modul.module_eval do
          alias_method :blank?, :empty?
        end
      end
    end

    module Hash # :nodoc:
      def self.included(modul)
        modul.module_eval do
          alias_method :blank?, :empty?
        end
      end
    end

    module String # :nodoc:
      def blank?
        self !~ /\S/
      end
    end

    module Numeric # :nodoc:
      def blank?
        false
      end
    end
  end

  unless Object.respond_to?(:blank?)
    for k in Blank.constants
      Object.const_get(k).class_eval do
        include Blank.const_get(k)
      end
    end
  end
end
