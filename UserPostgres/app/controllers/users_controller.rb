class UsersController < ApplicationController
  before_action :require_login, except: [:new, :index, :logging_out, :check, :create]
before_action :usercheck, only: [:update, :edit, :destroyer, :show ]
	def index
		return render "login"
	end

  def new

  end

  def logging_out
  	session.clear
  	return redirect_to "/sessions/new"
  end

  def show
  	@user = User.find(session[:id])

  end

  def edit
  	@user = User.find(session[:id])


  end

  def update
  	@user = User.find(params[:id].to_i)
   
   	@user[:name] = params[:name]
   	@user[:email] =  params[:email]
   	@user.save
   
   	if not @user.errors.messages.empty?
      flash[:notice] = @user.errors.full_messages
      return redirect_to "/users/#{params[:id].to_i}"
    end

   	return redirect_to "/users/#{params[:id].to_i}"
  end

  def check
  	@user = User.find_by(email: params[:email]).try(:authenticate, params[:password]) 

  	if (@user == nil) or ( @user == false)
  		flash[:notice] = []
  		flash[:notice].push("Invalid Combination")
  		return redirect_to "/users/new"
  	end

  	session[:id] = @user.id
  	session[:name] = @user.name
  	return redirect_to "/users/#{session[:id]}"

  end

  def create
  	@user = User.create(name: params[:name], email:  params[:email], password:  params[:password])

  	if not @user.errors.messages.empty?
      flash[:notice] = @user.errors.full_messages
      return redirect_to "/users/new"
    end
  

  	return redirect_to "/sessions/new"

  end

  def destroyer

  	User.find(params[:id]).destroy
  	#session.clear
  	return redirect_to "/users/new"
  end





end
