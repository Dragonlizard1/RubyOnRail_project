class UserController < ApplicationController

  def index
  	session.clear
  	@list_state = ["AL","AK","AZ","AR","CA","CO","CT","DE","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY"]

  end

  def edit
  	@user = User.find_by(id: session[:id])
  	@list_state = ["AL","AK","AZ","AR","CA","CO","CT","DE","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY"]

  end

  def create
  	@user = User.new(user_params)

  	@user.password_confirmation = params[:password_confirmation]
 
  	@user.save

  	if not @user.errors.messages.empty?
      flash[:alert] = @user.errors.full_messages
      return redirect_to root_path
    else
   	   flash[:notice] = ["You have successfully register"]
    end



    return redirect_to root_path
  end

  def update
  	@user = User.find(params[:id].to_i)
   
    @user.update(edit_params)
   	@user.save
   
   	if not @user.errors.messages.empty?
      flash[:notice] = @user.errors.full_messages
      return redirect_to "/user/#{params[:id].to_i}"
    end

   	return redirect_to "/event"
  end


  def logout
  	redirect_to root_path
  end

    def check
  	@user = User.find_by(email: params[:email]).try(:authenticate, params[:password]) 



  	if (@user == nil) or ( @user == false)
  		
  		flash[:notice] = ["Invalid Combination"]
  		return redirect_to root_path
  	end

  	session[:id] = @user.id
  	session[:f_name] = @user.f_name
  	return redirect_to "/event"

  end

    private
    def edit_params
      params.require(:user).permit(:f_name, :l_name, :email, :city, :state)
    end

    def user_params
      params.require(:user).permit(:f_name, :l_name, :email, :city, :state, :password)
    end
end
