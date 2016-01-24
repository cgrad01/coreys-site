class ProjectsController < ApplicationController
    def new
    end

    def create
    @admin = find_admin
    @project = @admin.projects.new(project_params)
      if @project.save
        redirect_to portfolio_path
      else
        @errors = @project.errors.full_messages
        render :new
      end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project
      @project.update_attributes(project_params)
      redirect_to portfolio_path
    else
      @errors = @project.errors.full_messages
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to portfolio_path
  end

  private

    def project_params
      params.require(:project).permit(:title, :description, :url, :github, :date)
    end
end