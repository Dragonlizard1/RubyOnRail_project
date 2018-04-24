class SecretsController < ApplicationController
	 before_action :require_login
 before_action :usercheck, except: [:show ]



  def show
  	@secret = Secret.all
 
  end

  def create
  	@secret = Secret.create(content: params[:content], user_id: params[:id])
  	return redirect_to "/users/#{params[:id]}"
  end

  def destroy
  	Secret.find_by(id: params[:secret_id]).delete
  	return redirect_to "/users/#{session[:id]}"
  end

end
