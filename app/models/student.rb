class Student < ApplicationRecord
	has_many :subjects
	belongs_to :group
end
