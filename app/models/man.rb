class Man < ActiveRecord::Base
	belongs_to :list
	def self.farmers
		farmers ||=  Man.where("type = 2") 
	end
end
