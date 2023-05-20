module Omail
  class InstallGenerator < Rails::Generators::Base
    desc "Add instalation file"

    source_root File.expand_path("templates", __dir__)

    def add_file 
      say "adding file", :red

      template("omail.rb", "config/initializers/omail.rb")
    end

  end
end