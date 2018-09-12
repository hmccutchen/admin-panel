class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_raven_context
  helper_method :current_user


  def current_user

    @current_user ||= Admin.find(session[:admin_id]) if session[:admin_id]
    @current_user ||= Teacher.find(session[:teacher_id]) if session[:teacher_id]

  end

  def require_user
    redirect_to '/login' unless session[:admin_id] || session[:teacher_id]
  end


  private

  def set_raven_context
    Raven.user_context(id: session[:admin_id]) # or anything else in session
    Raven.extra_context(params: params.to_unsafe_h, url: request.url)
  end


end
