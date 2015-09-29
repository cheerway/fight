class OrdersController < ApplicationController
	def index
		@orders = List.orders
	end

	def new
		@order = List.new
	end
	
end
