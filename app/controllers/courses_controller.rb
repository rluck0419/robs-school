class CoursesController < ApplicationController
  def show
    if Course.exists?(params[:id])
      render template: 'courses/show.html.erb', locals: { course: Course.find(params[:id]) }
    else
      render html: 'Course not found', status: 404
    end
  end

  def index
    render template: 'courses/index.html.erb', locals: { courses: Course.all }
  end

  def new
    render locals: {
      course: Course.new
    }
  end

  def create
    course = Course.new(course_params)
    if course.save
      redirect_to course
    else
      render :new
    end
  end

  def edit
    render locals: {
      course: Course.find(params[:id])
    }
  end

  def update
    course = Course.find(params[:id])
    if course.update(course_params)
      redirect_to course
    else
      render :edit
    end
  end

  def destroy
    if Course.exists?(params[:id])
      Course.destroy(params[:id])
      flash[:notice] = "Course deleted"
      redirect_to root_path
    else
      flash[:alert] = "There was an error - please try again"
    end
  end

  private
  def course_params
    params.require(:course).permit(:name, :school_id)
  end
end
