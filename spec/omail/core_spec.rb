# frozen_string_literal: true

require "omail"
require "securerandom"
require "spec_helper"
require "fileutils"

RSpec.describe Omail do
  describe ".to_mailbox" do
    let(:mail) { double("Mail", to: ["john@example.com"], html_part: double("HtmlPart", body: "HTML content")) }
    let(:filename) { "john@example.com-1621969790_abcd123.html" }
    let(:file_double) { double("emialFile") }
    let(:appname) { "myapp" }
    let(:file_path) { "/home/user/mailbox/myapp/john@example.com-162196s9790_abcd123.html" }

    before do
      allow(SecureRandom).to receive(:hex).with(6).and_return("abcd123")
      allow(Dir).to receive(:exist?).and_return(false)

      allow(FileUtils).to receive(:mkdir_p)
      allow(Dir).to receive(:home).and_return("/home/user")
      allow(Omail).to receive(:base_directory).and_return(file_path)
    end

    it "writes the mail content to the file" do
      expect(File).to receive(:open).with(file_path, "w").and_yield(file_double)
      expect(file_double).to receive(:write).with("HTML content")

      Omail.to_mailbox(mail, appname)
    end
  end
end
