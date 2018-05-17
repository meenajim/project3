class UsercategoriesController < ApplicationController
  before_action :set_usercategory, only: [:show, :edit, :update, :destroy]

  # GET /usercategories
  # GET /usercategories.json
  def index
    @usercategories = Usercategory.all
  end

  # GET /usercategories/1
  # GET /usercategories/1.json
  def show
  end

  # GET /usercategories/new
  def new
    @usercategory = Usercategory.new
  end

  # GET /usercategories/1/edit
  def edit
  end

  # POST /usercategories
  # POST /usercategories.json
  def create
    @usercategory = Usercategory.new(usercategory_params)

    respond_to do |format|
      if @usercategory.save
        format.html { redirect_to @usercategory, notice: 'Usercategory was successfully created.' }
        format.json { render :show, status: :created, location: @usercategory }
      else
        format.html { render :new }
        format.json { render json: @usercategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usercategories/1
  # PATCH/PUT /usercategories/1.json
  def update
    respond_to do |format|
      if @usercategory.update(usercategory_params)
        format.html { redirect_to @usercategory, notice: 'Usercategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @usercategory }
      else
        format.html { render :edit }
        format.json { render json: @usercategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usercategories/1
  # DELETE /usercategories/1.json
  def destroy
    @usercategory.destroy
    respond_to do |format|
      format.html { redirect_to usercategories_url, notice: 'Usercategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usercategory
      @usercategory = Usercategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usercategory_params
      params.require(:usercategory).permit(:category)
    end
end
