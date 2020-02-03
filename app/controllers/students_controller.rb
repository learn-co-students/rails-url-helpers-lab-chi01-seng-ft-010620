class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all

  end

  def show
    @student = Student.find(params[:id])
  end

  def new

  end

  def edit
  end

  def create
    @student = Student.new(params[:id])
    redirect_to "/students"
  end

  def destroy
    @student.find_by(params[:id])
    @student.destroy
  end

  def activate
    @student = Student.find(params[:id])
    if @student.active == false
      @student.active = true
    else
      @student.active = false
    end
    @student.save
    redirect_to student_path
  end

  private

    def set_student
      @student = Student.find_by(params[:id])
    end

    def student_params
      params.require(:student).permit(:first_name, :last_name)
    end
end
