class Man < ActiveRecord::Base
	has_many :lists
	validates :name, presence: true
	
	def self.farmers
		farmers = Man.where("role = 2") 
	end

	def self.customers
		customers = Man.where("role = 1") 
	end


end
