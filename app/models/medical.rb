class Medical < ApplicationRecord
	belongs_to :resident

		def self.medical
		self.group("name").count
	end
end
