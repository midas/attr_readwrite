require 'rubygems'
require 'sqlite3'
require 'active_record'
require 'rails'
require 'bundler/setup'

require 'attr_readwrite'

RSpec.configure do |config|

  config.mock_with :rspec

end

class Hash
  # for excluding keys
  def except(*exclusions)
    self.reject { |key, value| exclusions.include? key.to_sym }
  end

  # for overriding keys
  def with(overrides = {})
    self.merge overrides
  end
end

