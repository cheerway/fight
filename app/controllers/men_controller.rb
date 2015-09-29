class MenController < ApplicationController

  before_action :set_man, only: [:show, :edit, :update, :destroy]

  def edit
  end

  def create
    @man = Man.new(man_params)
    
    if @man.save
      if @man.role == 2
        redirect_to @man, notice: '雞農新增成功' 
      else
        redirect_to @man, notice: '客戶新增成功'
      end
    else
      render :new 
    end
  end

  def update
    if @man.update(man_params)
      if @man.role == 2
        redirect_to @man, notice: '雞農修改成功' 
      else
        redirect_to @man, notice: '客戶修改成功'
      end
    else
      render :edit 
    end
  end

  def destroy

    if @man.role == 2
       @man.destroy
       redirect_to farmers_url, notice: '雞農刪除成功' 
    else 
      @man.destroy
      redirect_to customers_url, notice: '客戶刪除成功'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_man
      @man = Man.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def man_params
      params.require(:man).permit(:name, :phone, :role, :comment)
    end


end
