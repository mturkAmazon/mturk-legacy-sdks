# Copyright:: Copyright (c) 2007-2015 Amazon Technologies, Inc.
# License::   Apache License, Version 2.0

require 'logger'

module Amazon
module Util
module Logging

  @@AmazonLogger = nil

  def self.deprecated( name, alt: nil, from: nil )
    warning = "DEPRECATION WARNING: #{name} is deprecated."
    if alt
      warning += " (use #{alt} instead)"
    end
    if from
      warning += " Called by #{Kernel.caller.first}"
    end
    if @@AmazonLogger
      @@AmazonLogger.warn warning
    else
      puts warning
    end
  end

  def set_log( filename )
    @@AmazonLogger = Logger.new filename
  end

  def log( str )
    set_log 'mturk.log' if @@AmazonLogger.nil?
    @@AmazonLogger.debug str
  end

end
end
end
