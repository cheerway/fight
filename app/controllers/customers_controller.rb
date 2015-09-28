class CustomersController < ApplicationController
	
	def index
		@customers = Man.customers
  end

  def new 
  	@customer = Man.new
  end

end
