class TeachersController < ApplicationController
  def show
    if Teacher.exists?(params[:id])
      render template: 'teachers/show.html.erb', locals: { teacher: Teacher.find(params[:id]) }
    else
      render html: 'Teacher not found', status: 404
    end
  end

  def index
    render template: 'teachers/index.html.erb', locals: { teachers: Teacher.all }
  end

  def new
    render locals: {
      teacher: Teacher.new
    }
  end

  def create
    teacher = Teacher.new(teacher_params)
    if teacher.save
      redirect_to teacher
    else
      render :new
    end
  end

  def edit
    render locals: {
      teacher: Teacher.find(params[:id])
    }
  end

  def update
    teacher = Teacher.find(params[:id])
    if teacher.update(teacher_params)
      redirect_to teacher
    else
      render :edit
    end
  end

  def destroy
    if Teacher.exists?(params[:id])
      Teacher.destroy(params[:id])
      flash[:notice] = "Teacher (& all students) deleted"
      redirect_to teachers
    else
      flash[:alert] = "There was an error - please try again"
    end
  end

  private
  def teacher_params
    params.require(:teacher).permit(:name, :school_id)
  end
end
