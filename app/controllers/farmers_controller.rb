class FarmersController < ApplicationController
  before_action :set_man, only: [:show, :edit, :update, :destroy]

  # GET /men
  # GET /men.json
  def index
    @men = Man.farmers
  end

  # GET /men/1
  # GET /men/1.json
  def show
  end

  # GET /men/new
  def new
    @man = Man.new
  end

  # GET /men/1/edit
  def edit
  end

  # POST /men
  # POST /men.json
  def create
    @man = Man.new(man_params)
    @man.group = 2
    respond_to do |format|
      if @man.save
        format.html { redirect_to @man, notice: 'Man was successfully created.' }
        format.json { render :show, status: :created, location: @man }
      else
        format.html { render :new }
        format.json { render json: @man.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /men/1
  # PATCH/PUT /men/1.json
  def update
    respond_to do |format|
      if @man.update(man_params)
        format.html { redirect_to @man, notice: 'Man was successfully updated.' }
        format.json { render :show, status: :ok, location: @man }
      else
        format.html { render :edit }
        format.json { render json: @man.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /men/1
  # DELETE /men/1.json
  def destroy
    @man.destroy

    format.html { redirect_to men_url, notice: 'Man was successfully destroyed.' }

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_man
      @man = Man.source.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def man_params
      params.require(:man).permit(:name, :telephone, :other, :group, :code)
    end


end
