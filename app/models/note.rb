class Note < ApplicationRecord

	belongs_to :resident 
	belongs_to :user
end
