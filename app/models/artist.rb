class Artist < ApplicationRecord
	has_many :artworks

	def to_s
		name
	end
end
