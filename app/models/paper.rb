class Paper < ApplicationRecord
  has_one_attached :uploaded_file, service: :local

  # @!attribute [rw] title
  # @return [String] The title of the paper
  #
  # @!attribute [rw] other_field
  # @return [String] Another field for the paper
end
