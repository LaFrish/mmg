class ProjectsController < ApplicationController

  def index
    @program = Program.find(params[:program_id])
    @projects = Project.all
  end

  def new
    @program = Program.find(params[:program_id])
    @project = Project.new
  end

  def create
    @program = Program.find(params[:program_id])
    @project = Program.project.create!(program_params)

    redirect_to program_params(@program)
  end

  def show
    @program = Program.find(params[:program_id])
    @project = Project.find(params[:id])
  end

  def edit
    @program = Program.find(params[:program_id])
    @project = Project.find(params[:id])
  end

  def update
    @program = Program.find(params[:program_id])
    @project = Project.find(params[:id])
    @project.update(project_params.merge(:id]))

    redirect_to program_projects_path(@project)
  end

  def destroy
    @program = Program.find(params[:program_id])
    @program.destroy

    redirect_to program_projects_path(@project)
  end

  private
  def _params
    params.require(:).permit()
  end
end
