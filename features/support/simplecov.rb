
require 'simplecov'
SimpleCov.start 'rails' do
  # Exclude Cucumber and RSpec test code from coverage reports
  add_filter '/features/'
  add_filter '/spec/'
end