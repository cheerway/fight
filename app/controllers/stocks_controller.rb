class StocksController < ApplicationController
	def index
		@stocks = List.stocks
	end
	def new
		@stock = List.new
	end
end
