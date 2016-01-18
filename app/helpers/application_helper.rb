module ApplicationHelper

  def find_admin
    find_admin ||= Admin.find_by(id: session[:admin_id])
  end

  def logged_in?
    !!find_admin
  end
end
