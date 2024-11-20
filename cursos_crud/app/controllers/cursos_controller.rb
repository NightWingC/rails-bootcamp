class CursosController < ApplicationController
  def index
    @cursos = Curso.where(visible: true)
  end

  def new
    @course = Curso.new
  end

  def create
    @course = Curso.create curso_params
    redirect_to cursos_path
  end

  # Strong params #
  private
  def curso_params
    params.required(:curso).permit(:title, :description, :visible, :published)
  end
end
