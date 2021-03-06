require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    config.generators do |g|
      g.orm :active_record
      g.test_framework :rspec
      g.assets false
      g.helper false
      g.stylesheets false
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
    end
    config.active_record.raise_in_transactional_callbacks = true
  end
end
