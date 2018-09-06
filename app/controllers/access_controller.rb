class AccessController < ApplicationController




  def login


  end

def logging_in
  username = params[:username]
  given_password = params[:password]

  user = User.find_by(username: username)
  p user
  if user == user.authenticate(params[:password])
  session[:user]

  redirect_to '/users'
else
  render 'access/login'

end
end



end
