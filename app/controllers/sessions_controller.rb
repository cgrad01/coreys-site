class SessionsController < ApplicationController
  def new
  end

  def create
    @admin = Admin.find_by(email: params[:email])
    if @admin && @admin.authenticate(params[:password])
      session[:admin_id] = @admin.id
      redirect_to root_path
    else
      flash[:alert] = "incorrect username or password"
      redirect_to login_path
    end
  end

  def destroy
    session[:admin_id] = nil
    redirect_to root_path
  end
end