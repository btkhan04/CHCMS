class Note < ApplicationRecord
	belongs_to :resident 
	belongs_to :user
validates :name, presence: true
validates :description, presence: true
validates :food_intake, presence: true
validates :fluid_intake, presence: true

	def self.by_notes
		self.group("name").count
	end
end
