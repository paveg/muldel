# frozen_string_literal: true

require 'simplecov'

if ENV['CI'] || ENV['ENABLE_COVERAGE']
  SimpleCov.start 'rails' do
    add_filter '/spec/'
    add_filter '/vendor/'
  end
end

if ENV['CI'] # Add codecov setting
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

RSpec.configure do |config|
  config.define_derived_metadata do |meta|
    meta[:aggregate_failures] = true unless meta.key?(:aggregate_failures)
  end
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.shared_context_metadata_behavior = :apply_to_host_groups
  require 'webmock/rspec'
end
