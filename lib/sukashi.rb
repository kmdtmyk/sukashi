require "sukashi/version"
require "sukashi/railtie"
require "sukashi/configration"
require "sukashi/middleware"
require "sukashi/html_editor"

module Sukashi
  # Your code goes here...

  class << self

    def config
      @config ||= Sukashi::Configuration.new
    end

  end

end
