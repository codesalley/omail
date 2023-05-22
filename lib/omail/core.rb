# frozen_string_literal: true

require "fileutils"

# Omail module
module Omail
  class << self
    def to_mailbox(mail, appname)
      filename = "#{mail.to.first}-#{Time.now.to_i}_#{SecureRandom.hex(6)}.html"

      File.open(base_directory(appname.downcase, filename), "w") do |file|
        if mail.html_part
          file.write(mail.html_part.body.to_s)
        else
          file.write(mail.body.to_s)
        end
      end
    end

    private

    def base_directory(appname, filename)
      default_directory = Dir.home
      app_directory = File.join(default_directory, "mailbox", appname)

      FileUtils.mkdir_p(app_directory) unless Dir.exist?(app_directory)

      File.join app_directory, filename
    end
  end
end
