class Ambulanceinfo < ActiveRecord::Base
	has_many :ambulancelocations
	has_one :ambulancestatus
end
