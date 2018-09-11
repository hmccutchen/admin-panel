class AdminsController < ApplicationController







# def login

#   username = params[:username]
#   given_password = params[:password]


#   admin = Admin.find_by(username: username)

#   if admin == given_password
#   session[:user] = admin

#   redirect_to courses_path
# else
#   render 'admins/home'

# end

# end
def home
end


def new

end


#will search the admin table for an existing admin username and password combination
#need to figure out how to search other tables as well?
def create
  # @admin = Admin.create(admin_params)

  @teacher = Teacher.find_by(username: params[:admin][:username])

  @admin = Admin.find_by(username: params[:admin][:username])

  if @admin && @admin.authenticate(params[:admin][:password])
    session[:admin_id] = @admin.id

    redirect_to courses_path
  elsif @teacher && @teacher.authenticate(params[:admin][:password])
    p "it read the line above"
    session[:teacher_id] = @teacher
    redirect_to courses_path

  else
    p "rejected"
    render 'new'
  end
end



def logged_in?
  !current_user.nil?
end



def log_out
  p "in the log out method!"
  session.delete(:admin_id)
  session.delete(:teacher_id)
  @current_user = nil
end



def destroy
  session[:admin_id] = nil
  session[:teacher_id]= nil
  log_out if logged_in?
  p 'Logged out successfully'
  redirect_to root_path
end




private

def admin_params

  params.require(:admin).permit(:username , :password )
end





end

