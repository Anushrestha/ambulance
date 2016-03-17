class Ambulancelocation < ActiveRecord::Base
	belongs_to :Ambulanceinfo
	geocoded_by :address
	after_validation :geocode
end
