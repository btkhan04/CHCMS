class Resident < ApplicationRecord
	def self.by_gender
		self.group("sex").count
	end

	def self.total
		self.group("first_name").count
	end
end
