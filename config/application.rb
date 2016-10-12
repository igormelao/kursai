require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Kursai
  class Application < Rails::Application
    # Use the responders controller from the responders gem
    config.app_generators.scaffold_controller :responders_controller

    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    config.i18n.default_locale = "pt-BR"
    config.time_zone = 'Brasilia'
    config.encoding = "utf-8"
  end
end
