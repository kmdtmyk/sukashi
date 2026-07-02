module Sukashi
  class Railtie < ::Rails::Railtie

    initializer 'sukashi.middleware' do |app|
      app.config.middleware.use Sukashi::Middleware
    end

  end
end
