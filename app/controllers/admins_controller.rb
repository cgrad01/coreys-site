class AdminsController < ApplicationController
  def index
  end

  def portfolio
    @admin = find_admin
  end
end

