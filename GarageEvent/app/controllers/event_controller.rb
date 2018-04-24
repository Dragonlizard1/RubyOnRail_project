class EventController < ApplicationController

  def index
  	@list_state = ["AL","AK","AZ","AR","CA","CO","CT","DE","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY"]
  	@state = User.find_by(id: session[:id]).state
  	@event = Event.all.eager_load(:user)
  end



  def show

  	@event = Event.eager_load(:user).find_by(id: params[:event_id])
  	@comment = Comment.all.eager_load(:user)
  	@count = 0
  	@people = User.all
  end

  def create

  	@event = Event.new(event_params)
  	@event.user_id = session[:id]
  	@event.save
  	if not @event.errors.messages.empty?
      flash[:alert] = @event.errors.full_messages
    
    else
   	   flash[:notice] = ["You have successfully add a event"]
    end
    return redirect_to "/event"
  end

  def comment
    @comment = Comment.new(content: params[:content], event_id: params[:event_id], user_id: session[:id])
    if not @event.errors.messages.empty?
      flash[:alert] = @event.errors.full_messages
    
    else
       flash[:notice] = ["You have successfully add a event"]
    end
    return redirect_to "/event/#{params[event_id]}"
  end

  private
   def event_params

      params.require(:event).permit(:title, :datesetup, :city, :state)
    end

end
