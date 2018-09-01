class CohortsController < ApplicationController


  def index
    @courses = Course.find(params[:course_id])
    @cohorts = Cohort.all
  end

  def new
  @cohort = Cohort.new
  @course = Course.find(params[:course_id])
  end



def create
  @course = Course.find(params[:course_id])
  @cohort = @course.cohorts.new(cohort_params)
  if @cohort.save
  redirect_to course_cohorts_path
else
  render 'new'
end
end

  def show
    @course = Course.find(params[:course_id])
    @cohort = Cohort.find(params[:id])
    @teacher = Teacher.find(params[:id])
  end

  def edit
  end

  private

def cohort_params
  params.require(:cohort).permit(:name, :start_date, :end_date)

end






end
