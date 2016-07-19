class SchoolsController < ApplicationController
  def show
    if School.exists?(params[:id])
      render template: 'schools/show.html.erb', locals: { school: School.find(params[:id]) }
    else
      render html: 'School not found', status: 404
    end
  end

  def index
    render template: 'schools/index.html.erb', locals: { schools: School.all }
  end

  def new
    render locals: {
      school: School.find(params[:id])
    }
  end

  def create
    school = School.new(school_params)
    if school.save
      redirect_to school
    else
      render :new
    end
  end

  def edit
    render locals: {
      school: School.find(params[:id])
    }
  end

  def update
    school = School.find(params[:id])
    if school.update(school_params)
      redirect_to school
    else
      render :edit
    end
  end

  def destroy
    if School.exists?(params[:id])
      School.destroy(params[:id])
      flash[:notice] = "School (& all teachers/students) deleted"
      redirect_to root_path
    else
      flash[:alert] = "There was an error - please try again"
    end
  end

  private
  def school_params
    params.require(:school).permit(:name)
  end
end
