class Job < ApplicationRecord
	has_many :tasks, dependent: :destroy
end
