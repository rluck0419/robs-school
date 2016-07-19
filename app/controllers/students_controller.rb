class StudentsController < ApplicationController
  def show
    if Student.exists?(params[:id])
      render template: 'students/show.html.erb', locals: { student: Student.find(params[:id]) }
    else
      render html: 'Student not found', status: 404
    end
  end

  def index
    render template: 'students/index.html.erb', locals: { students: Student.all }
  end

  def new
    render locals: {
      student: Student.find(params[:id])
    }
  end

  def create
    student = Student.new(student_params)
    if student.save
      redirect_to student
    else
      render :new
    end
  end

  def edit
    render locals: {
      student: Student.find(params[:id])
    }
  end

  def update
    student = Student.find(params[:id])
    if student.update(student_params)
      redirect_to student
    else
      render :edit
    end
  end

  def destroy
    if Student.exists?(params[:id])
      Student.destroy(params[:id])
      flash[:notice] = "Student deleted"
      redirect_to students
    else
      flash[:alert] = "There was an error - please try again"
    end
  end

  private
  def student_params
    params.require(:student).permit(:name, :teacher_id)
  end
end
