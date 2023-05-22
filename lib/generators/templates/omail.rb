# frozen_string_literal: true

module Omail
  # class to append to rails mail intercepter
  class EmailInterceptor
    def self.delivering_email(message)
      app_name = Rails.application.class.module_parent_name || Rails.application.class.parent_name
      Omail.to_mailbox(message, app_name)
    end
  end
end
ActionMailer::Base.register_interceptor(Omail::EmailInterceptor) if Rails.env.development?
