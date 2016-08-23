class ProgramsController < ApplicationController

  def index
    @programs = Program.all
  end

  def new
  end

  def create
  end

  def show
    @program = Program.find(params[:id])
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
