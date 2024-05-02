require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
Dotenv::Railtie.load


module TestGuru
  class Application < Rails::Application
     config.time_zone = 'Moscow'
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1
    config.assets.enabled = true

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
      config.i18n.available_locales = [:en, :ru]
      config.i18n.default_locale = :ru

config.autoload_paths << Rails.root.join("lib/clients")
  end
end
