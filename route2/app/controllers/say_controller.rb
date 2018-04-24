class SayController < ApplicationController
	@@visitation = 0
		
	def initialize
		
	end

	def index
  
     render text: "What do you want me to say???"
  end

  def destroy
  	session.clear
     render text: "Destroyed the session!"
  end

  def visit
  	@@visitation += 1
  	@text1 =  "You have visited this url #{@@visitation} times"
  	render text: @text1
  end

end
