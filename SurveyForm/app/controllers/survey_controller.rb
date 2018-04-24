class SurveyController < ApplicationController
	

	def welcome
		
	end

	def index
		if not session[:counter]
			session[:counter] = 0
		end
	end

	def result
		@display = {
			name: params[:name],
			location: params[:location],
			language: params[:language],
			comment: params[:comment]
		}

		session[:counter] += 1
		@text1 = "Thanks for submitting this form! "
		@text1+= "You have submitted this form #{session[:counter]} times now."

		flash[:message] = @text1
	end
end
