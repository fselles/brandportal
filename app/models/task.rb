class Task < ApplicationRecord
  mount_uploader :file, AttachmentUploader
  belongs_to :job
  validates :description, presence: true

end
