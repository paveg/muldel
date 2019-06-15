# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Muldel
  class Application < Rails::Application
    config.load_defaults 5.2
    config.generators do |generator|
      generator.test_framework :rspec
    end

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', readers: :any, methods: %i[get post options]
      end
    end
  end
end
