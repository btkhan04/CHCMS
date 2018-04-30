class Resident < ApplicationRecord
	has_many :medicals
	def self.by_gender
		self.group("sex").count
	end

	def self.total
		self.group("first_name").count
	end
end
