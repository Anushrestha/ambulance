class Ambulancelocation < ActiveRecord::Base
	# attr_accessible :ambulanceinfo_id
	belongs_to :Ambulanceinfo
	geocoded_by :address
	after_validation :geocode
end
