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

  private

    def project_params
      params.require(:project).permit(:title, :description, :url, :github, :date)
    end
end