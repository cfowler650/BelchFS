class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @User = User.find(params[:id])
  end

  def new
    @User = User.new
  end

#   def create
#     @User = User.new(User_params)
#     @User.user_id = current_user.id
#     if @User.save
#       redirect_to User_url(@User)
#     else
#       flash.now[:errors] = @User.errors.full_messages
#       render :new
#     end
#   end

#   def edit
#     @User = User.find(params[:id])
#   end

#   def update
#     @User = current_user.Users.find(params[:id])
#     if @User.update_attributes(User_params)
#       redirect_to User_url(@User)
#     else
#       flash.now[:errors] = @User.errors.full_messages
#       render :edit
#     end
#   end

#   def destroy
#     User = User.find(params[:id])
#     User.destroy
#     redirect_to links_url
#   end

  private
  def user_params
    params.require(:user).permit(:username)
  end

end
