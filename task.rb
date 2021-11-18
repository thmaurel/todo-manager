# DESCRIBE YOUR OBJECTS

class Task
  attr_reader :name, :due_date, :priority, :done
  def initialize(name, due_date, priority)
    @name = name
    @due_date = due_date
    @priority = priority
    @done = false
  end
end
