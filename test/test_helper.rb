require File.expand_path('../../test/dummy/config/environment.rb', __FILE__)

if ENV['HELL_ENABLED'] || ENV['CODECLIMATE_REPO_TOKEN']
  require 'simplecov'
  if ENV['CODECLIMATE_REPO_TOKEN']
    # require 'codeclimate-test-reporter'
    # SimpleCov.start CodeClimate::TestReporter.configuration.profile
    # CodeClimate::TestReporter.start
  else
    SimpleCov.start
  end
  SimpleCov.merge_timeout 3600
end

require 'rails/test_help'
require 'pry'

# Filter out Minitest backtrace while allowing backtrace from other libraries
# to be shown.
Minitest.backtrace_filter = Minitest::BacktraceFilter.new

