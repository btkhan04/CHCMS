class Medical < ApplicationRecord
	has_and_belongs_to_many :resident

		def self.medical
		self.group("name").count
	end
end
