class CursosController < ApplicationController
  before_action :set_course, only: [ :show, :edit, :update ]

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

  def show
  end

  def edit
  end

  def update
    @course.update(curso_params)
    redirect_to cursos_path
  end

  def destroy
    @course.delete
    redirect_to cursos_path
  end

  # Strong params #
  private

  def set_course
    @course = Curso.find params[:id]
  end

  def curso_params
    params.required(:curso).permit(:title, :description, :visible, :published)
  end
end
