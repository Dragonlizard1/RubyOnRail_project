class UsersController < ApplicationController


  # GET /users
  # GET /users.json


  def hello1
    render text: "Hello CodingDojo!"
  end

  def hello2
    render text: "Saying Hello!"
  end

  def hello3
    if params[:id] == "michael"
      redirect_to "/say/hello/joe"
      return
    end
    render text: "Saying Hello " + params[:id]
  
  end

  # GET /users/1
  # GET /users/1.json
 


end
