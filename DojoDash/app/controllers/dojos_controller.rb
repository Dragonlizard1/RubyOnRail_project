class DojosController < ApplicationController
  def index
  	@dojos = Dojo.all
  end

  def new
 

  end

   def create
  	 @data1 = {
  	 	branch: params[:branch],
  	 	street:params[:street],
		city:params[:city],
		state:params[:state]
  	 	}
  	 	Dojo.create(@data1)

  	redirect_to root_path
  end

  def update
  		 @data1 = {
  	 	branch: params[:branch],
  	 	street:params[:street],
		city:params[:city],
		state:params[:state]
  	 	}
  	 	@dojo1 = Dojo.find(params[:id])
  	 	@dojo1.update(@data1)
  	 	@dojo1.save
  	 	redirect_to root_path
  end

   def edit
 	@data1 = Dojo.find(params[:id])

  end
   def show
 	@data1 = Dojo.find(params[:id])

  end
   def destroy
 		Dojo.find(params[:id]).destroy
 		redirect_to root_path
  end
end
