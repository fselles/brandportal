class Job < ApplicationRecord
  JOBSTATUS= ['Actief', 'Archief']
	has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks
  validates :contactperson, :title, :article_number, presence: true
end
