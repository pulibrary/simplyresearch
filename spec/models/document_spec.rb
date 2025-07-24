require 'rails_helper'

RSpec.describe Document, type: :model do
  let(:admin) { Admin.create(email: "admin@example.com", password: "testPassword") }
  describe ".new" do
    it "creates a new Document" do
      document = described_class.new(title: "Sample Document", admin: admin)
      expect(document).to be_a(Document)
      expect(document.admin).to eq(admin)
    end
  end

  describe "document_pdf" do
    it "attaches a pdf document" do
      document = described_class.new(title: "Sample Document", admin: admin)
      file = fixture_file_upload('spec/sample.pdf', 'application/pdf')
      document.pdf.attach(file)
      expect(document.pdf).to be_attached
      expect(document.pdf.filename.to_s).to eq('sample.pdf')
      expect(document.pdf.content_type).to eq('application/pdf')
    end
  end
end
