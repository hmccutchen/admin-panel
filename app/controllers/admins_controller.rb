class AdminsController < ApplicationController



def create
  @admin = Admin.create(:username => "hmccutchen", :password => "hahaha")

end

def login

  username = params[:username]
  given_password = params[:password]

  admin = Admin.find_by(username: username)
  p admin
  if admin == admin.authenticate(params[:password])
  session[:user]

  redirect_to root_path
else
  render 'access/login'

end

end



def home
  @admin = Admin.new
end









end
