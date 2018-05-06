class Note < ApplicationRecord
	has_and_belongs_to_many :resident 
	belongs_to :user
end
