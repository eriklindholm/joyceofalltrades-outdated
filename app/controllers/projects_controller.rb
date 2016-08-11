class ProjectsController < ApplicationController


  def index
    @projects = Project.all
  end

  def show
    @project = Project.includes(:project_images, :project_tags).friendly.find(params[:id])
    render "show_#{@project.layout}"
  end


end
