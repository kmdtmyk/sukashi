require "sukashi/version"
require "sukashi/railtie"
require "sukashi/configration"
require "sukashi/current"
require "sukashi/middleware"
require "sukashi/html_editor"

module Sukashi
  # Your code goes here...

  class << self

    def config
      @config ||= Sukashi::Configuration.new
    end

    def request
      Sukashi::Current
    end

  end

end
