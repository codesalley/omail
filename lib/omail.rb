# frozen_string_literal: true


require_relative "omail/version"
# require_relative "omail/version"


# require_relative "omail/railtie" if defined?(Rails)

module Omail


  def setup
    "puts"
  end
  
  def self.received(params)
    puts params
  end
  
end
