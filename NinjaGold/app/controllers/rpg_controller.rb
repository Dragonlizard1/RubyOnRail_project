class RpgController < ApplicationController


  def index
  	if not session[:mygold]
  		session[:mygold] = 0
  		session[:activity1] = []
  	end

  end


  def process1
  	if params[:building] == "farm"
  		@mygold = rand(10..20)
  		@text1 = "Earn #{@mygold} golds from the farm! " + DateTime.current.strftime("%a, %b %e at %l:%M")+ DateTime.current.strftime("%p").downcase
  
  	elsif params[:building] == "cave"
  		@mygold = rand(5..10)
  		@text1 = "Earn #{@mygold} golds from the farm! " + DateTime.current.strftime("%a, %b %e at %l:%M")+ DateTime.current.strftime("%p").downcase
  	
  	elsif params[:building] == "house"
  		@mygold = rand(2..5)
  		@text1 = "Earn #{@mygold} golds from the farm! " + DateTime.current.strftime("%a, %b %e at %l:%M")+ DateTime.current.strftime("%p").downcase
  
  	elsif params[:building] == "casino"
  		@mygold = rand(-50..50)
  		@text1 = "Earn #{@mygold} golds from the farm! " + DateTime.current.strftime("%a, %b %e at %l:%M")+ DateTime.current.strftime("%p").downcase
  				
  	end

  	if @mygold < 0
  		@data1 = {
  			activity: @text1,
  			symbol: "neg"
  		}
  	else
		@data1 = {
			activity: @text1,
			symbol: "pos"
  		}
  	end
  	session[:activity1].push(@data1)
  	session[:mygold] += @mygold
  	p session
  	redirect_to "/"
  end

  def reset
  	session.clear
  	redirect_to "/"
  end

end
