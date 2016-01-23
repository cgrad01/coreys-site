class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def find_admin
    find_admin ||= Admin.find_by(id: session[:admin_id])
  end

  def logged_in?
    !!find_admin
  end

  protect_from_forgery with: :exception
end
