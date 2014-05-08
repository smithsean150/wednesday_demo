class CarolinaPanthersController < ApplicationController
  before_action :set_carolina_panther, only: [:show, :edit, :update, :destroy]

  # GET /carolina_panthers
  # GET /carolina_panthers.json
  def index
    @carolina_panthers = CarolinaPanther.all
  end

  # GET /carolina_panthers/1
  # GET /carolina_panthers/1.json
  def show
  end

  # GET /carolina_panthers/new
  def new
    @carolina_panther = CarolinaPanther.new
  end

  # GET /carolina_panthers/1/edit
  def edit
  end

  # POST /carolina_panthers
  # POST /carolina_panthers.json
  def create
    @carolina_panther = CarolinaPanther.new(carolina_panther_params)

    respond_to do |format|
      if @carolina_panther.save
        format.html { redirect_to @carolina_panther, notice: 'Carolina panther was successfully created.' }
        format.json { render :show, status: :created, location: @carolina_panther }
      else
        format.html { render :new }
        format.json { render json: @carolina_panther.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carolina_panthers/1
  # PATCH/PUT /carolina_panthers/1.json
  def update
    respond_to do |format|
      if @carolina_panther.update(carolina_panther_params)
        format.html { redirect_to @carolina_panther, notice: 'Carolina panther was successfully updated.' }
        format.json { render :show, status: :ok, location: @carolina_panther }
      else
        format.html { render :edit }
        format.json { render json: @carolina_panther.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carolina_panthers/1
  # DELETE /carolina_panthers/1.json
  def destroy
    @carolina_panther.destroy
    respond_to do |format|
      format.html { redirect_to carolina_panthers_url, notice: 'Carolina panther was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carolina_panther
      @carolina_panther = CarolinaPanther.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carolina_panther_params
      params.require(:carolina_panther).permit(:last_name, :first_name, :number, :position, :age, :years_pro)
    end
end
