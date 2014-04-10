class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    respond_to do |format|
      format.html
      format.json {render :json => @projects}
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.save
    redirect_to projects_path
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private

    def project_params
      params[:project].permit(:title, :detail, :finished)
    end

end
