class Exhib < ApplicationRecord
	has_many :artworks

	def to_s
		title
	end
end
