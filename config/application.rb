require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Firestarter
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :en

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
    Rails.application.config.x.firestarter_settings = config_for(:firestarter_settings)
    Rails.application.config.coin_rate = 10.0 #Coin conversion from Your currency
    Rails.application.config.max_budget_real = ENV['MAX_BUDGET'] or 0
    Rails.application.config.grant_refill = ENV['GRANT_REFILL'] or 0

    config.autoload_paths += Dir["#{config.root}/lib/googleAppsScript/**/"]
  end
end
