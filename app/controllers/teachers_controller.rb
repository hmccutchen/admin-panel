class TeachersController < ApplicationController





  def new
    @teacher = Teacher.new
    @cohort = Cohort.find(params[:cohort_id])
  end

def create
  @cohort = Cohort.find(params[:cohort_id])
  @teacher = @cohort.build_teacher(teacher_params)
  if @teacher.save!
  redirect_to cohort_teacher_path(@cohort)
else
  render 'new'
end
end


  def edit
    @cohort = Cohort.find(params[:cohort_id])
    @teacher = Teacher.find(params[:id])
  end

  def update
      @cohort = Cohort.find(params[:cohort_id])
    @teacher = Teacher.find(params[:id])
   @teacher.update(teacher_params)
  end

  def index
    @cohorts = Cohort.find(params[:cohort_id])
    @teachers = Teacher.all
  end

  def show
  end

private

def teacher_params
  params.require(:teacher).permit( :first_name, :last_name, :age, :education, :salary)
  end

end
