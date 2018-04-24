class PostController < ApplicationController
  def index
  
  	redirect_to "/" if session[:userid] == nil

  	@post1 = Post.all
  	@comment1 = Comment.all
 
  end
#belongs_to :users, :foreign_key => "users_id", :class_name => "User"
  def index1
  	session.clear
  	redirect_to '/users/new'
  end

  def login
  	render "new"
  end

  def newmessage
  #	params[:post_text]
  
  	
  	@post1 = Post.create(p_content: params[:post_text], user_id: session[:userid])
  	 if not @post1.errors.messages.empty?
      flash[:notice] = @post1.errors.full_messages
    end
    redirect_to "/messages"
  end

  def newcomment
  	 @comment1 = Comment.create(c_content: params[:comment_text], users_id: session[:userid], posts_id: params[:p_id])
  	
       if not @comment1.errors.messages.empty?
      flash[:notice] = @comment1.errors.full_messages
    end
    redirect_to "/messages"
# params[:comment_text]
  end

  def usercheck
  	@name = params[:name]
  	@user = User.find_by(name: @name)
  
  	if @user == nil
  		@user = User.create(name:@name)
      
  	end
  
    
    if not @user.errors.messages.empty?
      flash[:notice] = @user.errors.full_messages
      return render "new"
    end
  	session[:name] = @user[:name]
  	session[:userid] = @user[:id]

  	redirect_to "/messages"

  end



  def destroy
  	Post.find(1).destroy
  		redirect_to "/messages"
  end

end
