module Sukashi
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('templates', __dir__)

      def install
        template 'sukashi.rb.tt', 'config/initializers/sukashi.rb'
      end

    end
  end
end
