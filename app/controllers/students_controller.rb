class StudentsController < ApplicationController

  def index
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student)
  end

  def show
    student_find
  end

  def edit
    student_find
  end

  def update
    student_find
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  private

    def student_params
      params.require(:student).permit(:first_name, :last_name)
    end

    def student_find
      @student = Student.find(params[:id])
    end

end
