class Project
  attr_accessor :name, :description, :owner
  def initialize 
    @name = ""
    @description = ""
    @owner = "owner"

  end
  def elevator_pitch
    "#{@name}, #{@description}"
  end

  def tasks
  	return @tasks
  end

  def add_tasks data_task
  	@tasks.push(data_task)
  	return self
  end

  def print_tasks
  	@tasks.each do |x| 
  		p x
  	end
  end
end