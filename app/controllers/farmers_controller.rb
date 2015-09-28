class FarmersController < ApplicationController

  # GET /farmers
  # GET /farmers.json
  def index
    @farmers = Man.farmers.all
  end

  # GET /farmers/new
  def new
    @farmer = Man.new
  end

end
