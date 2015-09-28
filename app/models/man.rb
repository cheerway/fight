class Man < ActiveRecord::Base
	belongs_to :list
	def self.farmers
		farmers ||=  Man.where("role = 2") 
	end
end
