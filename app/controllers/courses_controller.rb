class CoursesController < ApplicationController
before_action :require_user, only: [:index, :show]

 before_action :find_course, only: [:show, :edit, :update]

  def index
    @courses = Course.all
  end

  def show
    # @cohort = Cohort.find(params[:id])
    @cohort = Cohort.joins(:course).where(:courses => {:id => params[:id]})
    # @teacher = Teacher.find(params[:id])
    #searches for students in the join table where course id is the id passed in url...
    @student = Student.joins(:courses).where(:courses => {:id => params[:id]})
    # @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    @course.save
    redirect_to '/courses'

  end

  def edit
    # @course = Course.find(params[:id])
  end


  def update
    # @course = Course.find(params[:id])
    @course.update(course_params)
    redirect_to '/courses'

  end



def results
  @results = (params[:q]).capitalize
  @course = Course.where(name: @results)
  p @course
end




private

def course_params
  params.require(:course).permit(:name, :total_hours)
end

def find_course
 @course = Course.find(params[:id])
  end





end
