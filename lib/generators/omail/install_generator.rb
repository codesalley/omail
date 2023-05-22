# frozen_string_literal: true

require "rails/generators/base"

module Omail
  # install generator class to add initializer file
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __dir__)

    def copy_initializer
      say "copying initializer", :green
      template("omail.rb", "config/initializers/omail.rb")
      append_to_file ".gitignore", 'config/initializers/omail.rb\n'
    end
  end
end
