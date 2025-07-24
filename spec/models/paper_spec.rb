require 'rails_helper'

RSpec.describe Paper, type: :model do

  describe "#uploaded_file" do
    it "attaches a file using the local ActiveStorage service" do
      paper = described_class.new(title: "Sample Paper")

      # Assuming you have a fixture file named 'sample.pdf' in the 'spec/fixtures/files' directory
      file = fixture_file_upload('sample.pdf', 'application/pdf')

      paper.uploaded_file.attach(file)

      expect(paper.uploaded_file).to be_attached
      expect(paper.uploaded_file.filename.to_s).to eq('sample.pdf')
      expect(paper.uploaded_file.content_type).to eq('application/pdf')
      paper.save!
    end
  end
end
