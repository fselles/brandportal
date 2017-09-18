class Task < ApplicationRecord
  mount_uploader :file, AttachmentUploader
  belongs_to :job
  validates :description, presence: true

 def self.search(search)
    where("description LIKE ? OR contactperson LIKE ?", "%#{search}%", "%#{search}%")
  end
end
