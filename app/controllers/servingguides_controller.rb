class ServingguidesController < ApplicationController
  before_action :set_servingguide, only: [:show, :edit, :update, :destroy]

  # GET /servingguides
  # GET /servingguides.json
  def index
    @servingguides = Servingguide.all
  end

  # GET /servingguides/1
  # GET /servingguides/1.json
  def show
  end

  # GET /servingguides/new
  def new
    @servingguide = Servingguide.new
  end

  # GET /servingguides/1/edit
  def edit
  end

  # POST /servingguides
  # POST /servingguides.json
  def create
    @servingguide = Servingguide.new(servingguide_params)

    respond_to do |format|
      if @servingguide.save
        format.html { redirect_to @servingguide, notice: 'Servingguide was successfully created.' }
        format.json { render :show, status: :created, location: @servingguide }
      else
        format.html { render :new }
        format.json { render json: @servingguide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servingguides/1
  # PATCH/PUT /servingguides/1.json
  def update
    respond_to do |format|
      if @servingguide.update(servingguide_params)
        format.html { redirect_to @servingguide, notice: 'Servingguide was successfully updated.' }
        format.json { render :show, status: :ok, location: @servingguide }
      else
        format.html { render :edit }
        format.json { render json: @servingguide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servingguides/1
  # DELETE /servingguides/1.json
  def destroy
    @servingguide.destroy
    respond_to do |format|
      format.html { redirect_to servingguides_url, notice: 'Servingguide was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servingguide
      @servingguide = Servingguide.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def servingguide_params
      params.require(:servingguide).permit(:usercategory_id, :age, :veg, :fruit, :grain, :meat, :milk, :additional_serve)
    end
end
