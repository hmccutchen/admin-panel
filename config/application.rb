require_relative 'boot'
require 'rails/all'


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)


module AdminPanel
  class Application < Rails::Application
    Raven.configure do |config|
  config.dsn = 'https://914393aec7d6439e956ec9064bfee626:c6eb38080dbc4298bf5ab1ce57826fb2@sentry.io/1279152'
end
config.assets.initialize_on_precompile = false
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
