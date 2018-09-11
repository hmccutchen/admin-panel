class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user


def current_user

  @current_user ||= Admin.find(session[:admin_id]) if session[:admin_id]
  @current_user ||= Teacher.find(session[:teacher_id]) if session[:teacher_id]

end

def require_user
  redirect_to '/login' unless session[:admin_id] || session[:teacher_id]
end

end
