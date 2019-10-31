require "pry"
require "simplecov"
require "bundler/setup"
require "translatable_fields"

SimpleCov.start

RSpec.configure do |config|
  config.order = :random
  config.pattern = "**/*_spec.rb"

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
