require_relative 'boot'
# require 'bundler/setup'

require 'rails/all'
require "active_storage/engine"
# require 'carrierwave'


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TheInsta
  class Application < Rails::Application
    config.load_defaults 5.2
    # Initialize configuration defaults for originally generated Rails version.
    # config.load_defaults 5.1
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    config.i18n.default_locale = :ja

    # Settings in config/environments/* take precedence over those specified here.
    config.generators do |g|
      g.assets false
      g.helper false
    end

  end
end
