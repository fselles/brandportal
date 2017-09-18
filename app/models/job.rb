class Job < ApplicationRecord
  JOBSTATUS= ['Actief', 'Archief']
	has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks
  validates :contactperson, :title, :article_number, presence: true
  scope :active, -> { where(status: "Actief") }
  scope :archive, -> { where(status: "Archief") }

  def self.search(search)
    where("title LIKE ? OR article_number LIKE ? OR contactperson LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
