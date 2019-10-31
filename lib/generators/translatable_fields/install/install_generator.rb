require "rails/generators"

module TranslatableFields
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("templates", __dir__)

    def add_initializer
      template("translatable_fields.rb", "config/initializers/translatable_fields.rb")
    end
  end
end
