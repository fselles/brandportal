class Task < ApplicationRecord
  belongs_to :job
  validates :description, presence: true
end
