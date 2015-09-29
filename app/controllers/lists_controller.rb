class ListsController < ApplicationController

before_action :set_list, only: [:show, :edit, :update, :destroy]

  def create
    @list = List.new(list_params)
    
    if @list.save
      if @list.kind == 2
        redirect_to @list, notice: '進貨單新增成功' 
      else
        redirect_to @list, notice: '出貨單新增成功'
      end
    else
      render :new 
    end
  end

  def edit
  end

  def update
    if @list.update(list_params)
      if @list.kind == 1
        redirect_to @list, notice: '出貨單修改成功' 
      else
        redirect_to @list, notice: '進貨單修改成功'
      end
    else
      render :edit 
    end
  end

  def destroy

    if @list.kind == 1
       @list.destroy
       redirect_to orders_url, notice: '進貨單刪除成功' 
    else 
      @list.destroy
      redirect_to outtings_url, notice: '出貨單刪除成功'
    end
  end

  private

  def set_list
  	@list = List.find(params[:id])
  end

  def list_params
  	params.require(:list).permit(:product_id, :man_id, :unit_price, :quantity, :cage_weight, :total_weight, :date, :kind)
  end
end
