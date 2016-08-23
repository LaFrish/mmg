class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
  end

  def create
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def _params
    params.require(:).permit()
  end
end
