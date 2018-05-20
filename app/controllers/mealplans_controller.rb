class MealplansController < ApplicationController
  # before_action :set_mealplan, only: [:show, :edit, :update, :destroy]

  # GET /mealplans
  # GET /mealplans.json
  def index
    @mealplans = Mealplan.all
    if @current_user.present?
        @mealplan_user = Mealplan.where(:user_id => @current_user.id)
    end
    # @servingguide_test = Servingguide.where(:usercategory_id => @current_user.usercategory_id, :age => Date.today.year - @current_user.dob.year)
    @servingguide = Servingguide.where("usercategory_id = ? and age < ?",  @current_user.usercategory_id ,Date.today.year - @current_user.dob.year )



  end

  # GET /mealplans/1
  # GET /mealplans/1.json

  def update_all
    params['mealplan'].keys.each do |id|
      @mealplan = Mealplan.find(id.to_i)
      @mealplan.update_attributes(mealplan_params(id))
    end
  # Mealplan.update_all({veg: 4},{id: params[:id]})
  redirect_to(mealplans_url)
  end

  def show
    # cant search by date bcos its always by id..so create new def showby date
    @mealplan = Mealplan.find(params[:id])
  end


  def showbydate
    @mealplan_showbydate = Mealplan.where("user_id = ? and date = ?", @current_user.id, params[:date])
    @servingguide = Servingguide.where("usercategory_id = ? and age < ?",  @current_user.usercategory_id ,Date.today.year - @current_user.dob.year )

  end



  # GET /mealplans/new
  def new
    # @mealplan = Mealplan.new
    # ******************************
  if Mealplan.where("user_id = ? and date = ?",  @current_user.id ,Date.today).present?
      @mealplans = Mealplan.where("user_id = ? and date = ?",  @current_user.id ,Date.today)
  else
    Mealplan.create :user_id => @current_user.id, :date => Date.today , :mealtype => 'Breakfast'
    Mealplan.create :user_id => @current_user.id, :date => Date.today , :mealtype => 'Lunch'
    Mealplan.create :user_id => @current_user.id, :date => Date.today , :mealtype => 'Snack'
    Mealplan.create :user_id => @current_user.id, :date => Date.today , :mealtype => 'Dinner'
    @mealplans = Mealplan.where("user_id = ? and date = ?",  @current_user.id ,Date.today)
  end
    # ******************************
  end

  # GET /mealplans/1/edit
  def edit
    # ******************************
    @mealplans = Mealplan.all
    # ******************************
  end

  # POST /mealplans
  # POST /mealplans.json
  def create
    @mealplan = Mealplan.new(mealplan_params)

    respond_to do |format|
      if @mealplan.save
        format.html { redirect_to @mealplan, notice: 'Mealplan was successfully created.' }
        format.json { render :show, status: :created, location: @mealplan }
      else
        format.html { render :new }
        format.json { render json: @mealplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mealplans/1
  # PATCH/PUT /mealplans/1.json
  def update
    @mealplan = Mealplan.find(params[:id])
    respond_to do |format|
      if @mealplan.update(mealplan_params)
        format.html { redirect_to @mealplan, notice: 'Mealplan was successfully updated.' }
        format.json { render :show, status: :ok, location: @mealplan}
      else
        format.html { render :edit }
        format.json { render json: @mealplan.errors, status: :unprocessable_entity }
      end
    end
  end




  # DELETE /mealplans/1
  # DELETE /mealplans/1.json
  def destroy
    @mealplan = Mealplan.find(params[:id])
    @mealplan.destroy
    respond_to do |format|
      format.html { redirect_to mealplans_url, notice: 'Mealplan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_mealplan
    #   @mealplan = Mealplan.find(params[:id])
    #
    #
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def mealplan_params
    #   params.require(:mealplan).permit(:user_id, :date, :mealtype, :veg, :fruit, :grain, :meat, :milk, :additional_serve)
    # end

    def mealplan_params(id)
       params.require(:mealplan).fetch(id).permit(:user_id, :date, :mealtype, :veg, :fruit, :grain, :meat, :milk, :additional_serve)

     end

end
