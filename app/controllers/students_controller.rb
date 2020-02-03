class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  #renders properly
  #renders the first name in a h1 tag
  #renders the last name in a h1 tag
  #renders the active status if the user is inactive
  #renders the active status if the user is active
  def show
    @student = Student.find(params[:id])
  end
   

  #Should mark an inactive student as active 
  #Should mark an active student as inactive 
  #Should redirect to the student show page 
  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
   
    end
end