class UsersController < ApplicationController

layout "two_column", only: [:index, :new, :create]

	def index 
		@users = User.all

	end

	def new
	
	end

	def create
		@data1 = {
			first_name: params[:first_name],
			last_name: params[:last_name],
			favorite_language: params[:favorite_language]
		}
		User.create(@data1)
		redirect_to root_path
	end





end
