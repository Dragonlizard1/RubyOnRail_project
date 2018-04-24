class PostsController < ApplicationController

layout "three_column"

	def index 
		@posts = Post.joins(:user).all
		@users = User.all
	end

	def new

	end

	def create
		data1 = {
			title: params[:title],
			content: params[:content],
			user_id: params[:id].to_i

		}
		Post.create(data1)
		redirect_to "/posts"
	end



end
