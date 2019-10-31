require "translatable_fields/version"
require "translatable_fields/configuration"
require "translatable_fields/concern"

module TranslatableFields
  def self.configure
    yield(config)
  end

  def self.config
    @config ||= Configuration.new
  end
end
