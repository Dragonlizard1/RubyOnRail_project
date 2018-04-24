class StudentController < ApplicationController

  def initialize
    
  end



  def index
    @dojoschool = params[:dojo_id].to_i
    @data1 = Dojo.find(@dojoschool)
    @users = Student.where(dojo_id: @dojoschool)
  end

  def new
  @dojoschool = params[:dojo_id].to_i
  @data1school = Dojo.all
  end

   def create
    @location = params[:location].to_i
    @dojoschool = params[:dojo_id].to_i
     @data1 = {
      first_name: params[:first_name],
      last_name:params[:last_name],
    email:params[:email],
    dojo_id: @location
      }
      Student.create(@data1)
    
    redirect_to :back
  #   redirect_to ("/dojos/" + @dojoschool.to_s + "/students")
  end

  def update
    @location = params[:location].to_i
    @dojoschool = params[:dojo_id].to_i
    @user = Student.find(params[:id].to_i)
     @user.update( first_name: params[:first_name],
      last_name:params[:last_name],
    email:params[:email],
    dojo_id: @location)
      
      
      
    redirect_to :back
  end

   def edit 
      @dojoschool = params[:dojo_id].to_i
  @user = Student.find(params[:id].to_i)
   @data1school = Dojo.all

  end

   def show
    @dojoschool = params[:dojo_id].to_i
  @user = Student.find(params[:id].to_i)
   @data1 = Dojo.find(@dojoschool)

  end

   def destroy
    @dojoschool = params[:dojo_id].to_i
    Student.find(params[:id]).destroy
     redirect_to  "/dojos/" + @dojoschool.to_s + "/students"
  end



end
