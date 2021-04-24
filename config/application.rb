# frozen_string_literal: true

require_relative 'boot'

require 'rails'
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_mailbox/engine'
require 'action_text/engine'
require 'action_view/railtie'
require 'action_cable/engine'
require 'sprockets/railtie'

Bundler.require(*Rails.groups)

module Homatri
  # This Application class is responsible for the platform
  class Application < Rails::Application
    config.eager_load_paths << Rails.root.join('lib')
    config.autoload_paths << Rails.root.join('spec/system/pages') if Rails.env.test?
    config.load_defaults 6.1

    config.generators do |generator|
      generator.assets = false
      generator.controller_tests = false
      generator.helper = false
      generator.orm :active_record, primary_key_type: :uuid
      generator.system_specs = true
      generator.test_framework :rspec
    end
  end
end
