class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def index
  	@products = Product.all
  end

  def new
  	@product = Product.new
  end

  def update
    if @product.update product_params
      redirect_to @product, notice: '修改成功'
    else
      render :edit
    end
  end

  def create
  	@product = Product.new(product_params)

  	if @product.save
  		redirect_to @product, notice: '新增成功'
  	else
  		render :new
  	end
  end

  private

  def set_product
  	@product = Product.find(params[:id])
  end
  
  def product_params
  	params.require(:product).permit(:name)
  end

end
