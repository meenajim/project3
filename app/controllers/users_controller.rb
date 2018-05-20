class UsersController < ApplicationController

  def index

   @users = User.all

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
#line below will send welcome email to the user
      UserMailer.welcome(@user).deliver_now
      redirect_to login_path
    else
      render :new
    end
  end



  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    if @user.update user_params # user.save, all in one step. update and saves.
    redirect_to @user
    else
      render :edit #using this data in the update action, render edit page.
    end
  end

  def show
    @user = User.find params[:id]
  end

  def activate
    @user = User.find params[:id]
    User.where(:id => params[:id]).update(activated: 't')
      redirect_to login_path
  end

  private
    def user_params
      params.require(:user).permit(:id, :name, :password, :password_confirmation, :usercategory_id, :dob, :email, :family_id,:user_type,:activated)

    end







  # before_action :set_user, only: [:show, :edit, :update, :destroy]
  #
  # # GET /users
  # # GET /users.json
  # def index
  #   @users = User.all
  # end
  #
  # # GET /users/1
  # # GET /users/1.json
  # def show
  # end
  #
  # # GET /users/new
  # def new
  #   @user = User.new
  # end
  #
  # # GET /users/1/edit
  # def edit
  # end
  #
  # # POST /users
  # # POST /users.json
  # def create
  #   @user = User.new(user_params)
  #
  #   respond_to do |format|
  #     if @user.save
  #       format.html { redirect_to @user, notice: 'User was successfully created.' }
  #       format.json { render :show, status: :created, location: @user }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # PATCH/PUT /users/1
  # # PATCH/PUT /users/1.json
  # def update
  #   respond_to do |format|
  #     if @user.update(user_params)
  #       format.html { redirect_to @user, notice: 'User was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @user }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # DELETE /users/1
  # # DELETE /users/1.json
  # def destroy
  #   @user.destroy
  #   respond_to do |format|
  #     format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end
  #
  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_user
  #     @user = User.find(params[:id])
  #   end
  #
  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def user_params
  #     params.require(:user).permit(:name, :password_digest, :usercategory_id, :dob, :email, :family_id)
  #   end
end
