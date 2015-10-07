class ReportsController < ApplicationController
	def today	
		@orders = List.where("(date = current_date and kind = '1') 
                   or (date = (current_date-1) and kind = '2')" )
	end

  def index
  	@list = List.new
  end

  def new

  end


  def choose
  	# render :text => params[:day]["date"]
  	redirect_to date_path(params[:day]["date"])
  end
  def show
    c_day = Date.parse(params["date"])
    d_day = c_day - 1
  	# @lists = List.where(date: params["date"])
  	@lists = List.where("(date = '#{c_day}' and kind = '1') 
                   or (date = '#{d_day}' and kind = '2')")
  end
end
