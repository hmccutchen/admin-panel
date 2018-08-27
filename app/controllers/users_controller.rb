class UsersController < ApplicationController




  def index

    @users = User.all
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user] = @user

      redirect_to '/users'
    else
      render 'new'
    end
  end





private

def user_params

  params.require(:user).permit(:username, :password, :first_name, :last_name, :age, :education, :role, :password_confirmation)
end




end
