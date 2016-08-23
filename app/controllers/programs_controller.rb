class ProgramsController < ApplicationController

  def index
    @programs = Program.all
  end

  def new
    @programs = Program.new
  end

  def create
    @programs = Program.create!(program_params)

    redirect_to programs_path(@program)
  end

  def show
    @program = Program.find(params[:id])
  end

  def edit
    @program = Program.find(params[:id])
  end

  def update
    @program = Program.find(params[:id])
    @program.update(program_params)

    redirect_to programs_path(@program)
  end

  def destroy
    @program = Program.find(params[:id])
    @program.destroy

    redirect_to programs_path
  end

  private
  def program_params
    params.require(:program).permit()
  end
end
