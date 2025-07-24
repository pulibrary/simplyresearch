class Paper < ApplicationRecord
  has_one_attached :uploaded_file, service: :s3mock
end
