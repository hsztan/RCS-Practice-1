class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save  #saving is similar to validate"has_secure_password makes a validation for :password "
      session[:user_id] = @user.id
    else
    #   flash[:message] = "User is not valid, ask Nash"
    #   redirect_to new_user_path
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
