class CarolinasController < ApplicationController
  before_action :set_carolina, only: [:show, :edit, :update, :destroy]

  # GET /carolinas
  # GET /carolinas.json
  def index
    @carolinas = Carolina.all
  end

  # GET /carolinas/1
  # GET /carolinas/1.json
  def show
  end

  # GET /carolinas/new
  def new
    @carolina = Carolina.new
  end

  # GET /carolinas/1/edit
  def edit
  end

  # POST /carolinas
  # POST /carolinas.json
  def create
    @carolina = Carolina.new(carolina_params)

    respond_to do |format|
      if @carolina.save
        format.html { redirect_to @carolina, notice: 'Carolina was successfully created.' }
        format.json { render :show, status: :created, location: @carolina }
      else
        format.html { render :new }
        format.json { render json: @carolina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carolinas/1
  # PATCH/PUT /carolinas/1.json
  def update
    respond_to do |format|
      if @carolina.update(carolina_params)
        format.html { redirect_to @carolina, notice: 'Carolina was successfully updated.' }
        format.json { render :show, status: :ok, location: @carolina }
      else
        format.html { render :edit }
        format.json { render json: @carolina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carolinas/1
  # DELETE /carolinas/1.json
  def destroy
    @carolina.destroy
    respond_to do |format|
      format.html { redirect_to carolinas_url, notice: 'Carolina was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carolina
      @carolina = Carolina.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carolina_params
      params.require(:carolina).permit(:Panthers, :last_name, :first_name, :number, :position, :years_pro)
    end
end
