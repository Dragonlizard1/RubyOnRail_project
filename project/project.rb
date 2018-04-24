class Project
  attr_accessor :name, :description, :owner
  def initialize name, description, owner
    @name = name
    @description = description
    @owner = owner
    @tasks = []
  end
  def elevator_pitch
    "#{@name}, #{@description}, #{@owner}"
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