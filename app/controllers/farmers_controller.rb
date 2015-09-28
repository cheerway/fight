class FarmersController < ApplicationController
  before_action :set_farmer, only: [:show, :edit, :update, :destroy]

  # GET /farmers
  # GET /farmers.json
  def index
    @farmers = Man.farmers
  end

  # GET /farmers/1
  # GET /farmers/1.json
  def show
  end

  # GET /farmers/new
  def new
    @farmer = Man.new
  end

  # GET /farmers/1/edit
  def edit
  end

  # POST /farmers
  # POST /farmers.json
  def create
    @farmer = Man.new(farmer_params)
    
    if @farmer.save
      redirect_to @farmer, notice: 'Man was successfully created.' 
    else
      render :new 
    end
  end

  # PATCH/PUT /farmers/1
  # PATCH/PUT /farmers/1.json
  def update
    if @farmer.update(farmer_params)
      redirect_to @farmer, notice: 'Man was successfully updated.' 
    else
      render :edit 
    end
  end

  # DELETE /farmers/1
  # DELETE /farmers/1.json
  def destroy
    @farmer.destroy

    format.html { redirect_to farmers_url, notice: 'Man was successfully destroyed.' }

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_farmer
      @farmer = Man.farmers.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def farmer_params
      params.require(:farmer).permit(:name, :phone, :role, :comment)
    end


end
