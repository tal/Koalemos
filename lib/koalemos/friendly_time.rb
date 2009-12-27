require File.join(File.dirname(__FILE__),'num_to_time.rb')

module Koalemos
  module FriendlyTime
    def friendly(since = Time.now)
      ago = since - self
      case ago
      when 0...1.minute
        'seconds ago'
      when 1.minute...2.minutes
        '1 minute ago'
      when 2.minutes...1.hour
        "#{(ago.to_f/1.minute.to_f).ceil} minutes ago"
      when 1.hour...2.hours
        '1 hour ago'
      when 2.hours...1.day
        "#{(ago.to_f/1.hour.to_f).ceil} hours ago"
      when 1.day...2.days
        '1 day ago'
      when 2.days...1.month
        "#{(ago.to_f/1.day.to_f).ceil} days ago"
      when 1.month...2.months
        '1 month ago'
      when 2.months...1.year
        "#{(ago.to_f/1.month.to_f).ceil} months ago"
      when 1.year...2.years
        '1 year ago'
      else
        "#{(ago.to_f/1.year.to_f).ceil} years ago"
      end
    end
  end
  
  class ::Time
    if !method_defined?(:friendly) && ::Numeric.method_defined?(:day)
      include FriendlyTime
    else
      if ::Numeric.method_defined?(:day)
        warn "#{self}#friendly is already defined. Could not include #{__FILE__}"
      else
        warn "#{self}#friendly could not be defined, Numeric days needs to be defined. Could not include #{__FILE__}"
      end
    end
  end
end