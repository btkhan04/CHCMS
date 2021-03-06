class Resident < ApplicationRecord
validates :first_name, presence: { message: "first name can't be blank" }
validates_length_of :first_name, within: 2..20, too_long: 'too long', too_short: 'too short'
validates :last_name, presence: { message: "last name can't be blank" }
validates :next_of_kin, presence: true
validates :dob , presence: true
	# has_many :medical, ->{ order(:name).distinct } 
	has_many :notes
	
	# def date_of_birth
	# 	self.date_of_birth ?  "#{self.date_of_birth.strftime('%d/%m/%y')} (#{self.age}" : ''
	# end

	# def age
	# 	if date_of_birth
	# 		((Time.zone.today.strftime("%y%m%d").to_i - date_of_birth.strftime("%y%m%d").to_i) / 10_000).to_i
	# 	else
	# 		0 
	# 	end
	# end

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
