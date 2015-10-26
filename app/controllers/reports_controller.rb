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
    @c_day = Date.parse(params["date"])
    @d_day = @c_day - 1
    # render :text => @c_day	
  	# @lists = List.where(date: params["date"])
  	@lists = List.where("(date = '#{@c_day}' and kind = '1') 
                   or (date = '#{@d_day}' and kind = '2')")
  	@income_lists = List.where("date = '#{@d_day}' and kind = '2'")

  	@outgo_lists = List.where("date = '#{@c_day}' and kind = '1'")
  	# @income_lists_grouped = @income_lists.group_by(|id| :man_id)

  	@alists = List.where("date = '#{@d_day}' and kind = '2'").order(:product_id)

  	# @compare_lists = compare(@income_lists, @outgo_lists)
		@count = compare(@income_lists, @outgo_lists)
		
  end

  def compare( come_in,  go_out)
  	h1=come_in.group(:product_id).sum(:total_weight)
  	h2=go_out.group(:product_id).sum(:total_weight)
  	h3 = Hash.new()
  	h1.each_key do |k|
  		h1[k] ||=0
  		h2[k] ||=0
  		h3[Product.find(k).name] = [h1[k],h2[k]]
  	end
  	h3
  end
end
