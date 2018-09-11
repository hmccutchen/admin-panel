class StudentsController < ApplicationController
  def index
  end



def index
  # @courses = Course.find(params[:course_id])
    @cohort = Cohort.find(params[:cohort_id])
  @students = Student.all
end
  def show
  end

  def edit
  end

  def new
    @cohort = Cohort.find(params[:cohort_id])
      # @course = Course.find(params[:course_id])
    @student = Student.new
  end


  def create
    @cohort = Cohort.find(params[:cohort_id])
      # @course = Course.find(params[:course_id])
       # @student = @course.students.new(student_params)
     @student = @cohort.students.new(student_params)
     # @course.students << @student
     if @student.save

      redirect_to cohort_students_path(@cohort)
    else
      render 'new'
    end
  end



def results
  @results = (params[:q]).downcase
  @student = Student.where(first_name: @results)
  p @student
end




private

def student_params

  params.require(:student).permit(:first_name, :last_name, :age, :education)
  end



end
