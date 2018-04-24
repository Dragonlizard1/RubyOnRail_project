class LikesController < ApplicationController

	 before_action :require_login
 
  def create
  		Like.create(user_id: session[:id] , secret_id: params[:secret_id])
  	return redirect_to secrets_path
  end

  def destroy

  	 Like.find_by(user_id: session[:id] , secret_id: params[:secret_id]).delete
  	
  	return redirect_to secrets_path
  end

end
