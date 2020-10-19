require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)


module OrderApp
  class Application < Rails::Application
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', headers: :any, methods: [:get, :post, :options, :heads]
      end
    end
  end
end
