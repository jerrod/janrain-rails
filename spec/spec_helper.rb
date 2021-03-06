ENV['RAILS_ENV'] = 'test'
require 'rubygems'
require 'bundler/setup'
require 'rails'
require 'action_view'
require 'action_controller'
require "action_controller/railtie"
require 'active_model'
require 'active_record'
require 'support/setup_rails'
require 'janrain'
require 'rspec/rails'
require 'rspec/mocks'
require 'rspec/rails/mocks'
require 'artifice'
require 'database_cleaner'

Dir[Rails.root.join("support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  # database cleaner
  config.use_transactional_fixtures = false

  config.before(:all) do
    Artifice.activate_with(JanrainAPI.new)
  end
  config.before(:each) do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.start
  end

  config.after do
    DatabaseCleaner.clean
  end

end

