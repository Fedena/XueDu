class ClassroomsController < ApplicationController
  before_filter :init_data
  filter_access_to :all

  def index
    @classrooms = @school.classrooms 
  end

  def new
    @classroom = @school.classrooms.build 
  end

  def create
    @classroom = @school.classrooms.build(params[:classroom])
    if @classroom.save
      flash[:notice] = 'Classroom created successfully.'
      redirect_to [@school, @classroom] 
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @classroom.update_attributes(params[:classroom])
      flash[:notice] = 'Updated classroom details successfully.'
      redirect_to [@school, @classroom] 
    else
      flash[:notice] = "Please fill all feilds."
      redirect_to edit_school_classroom_path(@school, @classroom)
    end
  end

  def show
    @subjects = @classroom.subjects 
    #@classroom = Classroom.find(params[:id])
    #@school = @classroom.school
  end

  def destroy
    if @classroom.subjects.empty?
      @classroom.inactivate
      flash[:notice] = 'Classroom deleted successfully.'
      redirect_to @school
    else
      flash[:warn_notice] = '<p>Unable to delete Classroom.Please delete all Subjects first.</p>' if @classroom.subjects.empty?
      redirect_to [@school, @classroom] 
    end
  end

  private
  def init_data
    @classroom = Classroom.find params[:id] if ['show', 'edit', 'update', 'destroy'].include? action_name 
    @school = School.find params[:school_id]
  end
end
