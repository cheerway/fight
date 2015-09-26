class Man < ActiveRecord::Base
	has_many :lists
	def self.farmers
		farmers ||=  Man.where("type = 2") 
	end
end
