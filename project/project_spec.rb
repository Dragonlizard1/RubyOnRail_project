require_relative 'project' # include our Project class in our spec file
RSpec.describe Project do  
  before(:each) do 
    @project1 = Project.new('Project 1', 'description 1', 'John Doe') # create a new project and make sure we can set the name attribute
 	 @project2 = Project.new('Project 2', 'description 2', "testing Adam")
  end
  # it 'has a getter and setter for name attribute' do
  #   @project1.name = "Changed Name" # this line would fail if our class did not have a setter method
  #   expect(@project1.name).to eq("Changed Name") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
  # end
    it 'has a method elevator_pitch to explain name and description' do
   p expect(@project1.elevator_pitch).to eq("Project 1, description 1", 'John Doe')
   p expect(@project2.elevator_pitch).to eq("Project 2, description 2", "testing Adam")
  end 

  it "testing --------------" do
  	@project1.add_tasks("I'm Hungry")
  	@project1.add_tasks("Where to get food")
  	@project2.add_tasks("i'm tired")
  	@project2.add_tasks("I'm going to sleep")
  	@project1.print_tasks
  	@project2.print_tasks
  	
  
  end

end