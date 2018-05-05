class Resident < ApplicationRecord
	has_many :medical
	has_many :notes 
	
	def self.by_gender
		self.group("sex").count
	end

	def self.total
		self.group("first_name").count
	end
    def fullname
	    self.first_name << " " << self.last_name
	end
 
end
