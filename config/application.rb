require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Jdstore
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
# Adding Webfonts to the Asset Pipeline
config.assets.precompile << Proc.new { |path|
  if path =~ /\.(eot|svg|ttf|woff)\z/
    true
  end
}
