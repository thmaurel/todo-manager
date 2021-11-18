require_relative 'task'
require_relative 'view'

class Controller
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  def list
    # Read all the tasks from the repository
    tasks = @repository.all
    # Give them to the view to display them
    @view.display(tasks)
  end

  def add
    # Ask the user for the name
    name = @view.ask_user_for('name')
    # Ask the user for the priority
    priority = @view.ask_user_for('priority')
    # Ask the user for the due_date
    due_date = @view.ask_user_for('due date')
    # Create a new instance of task
    task = Task.new(name, due_date, priority)
    # Add a task to the repository
    @repository.add_task(task)
  end

  def remove
    # Display all the tasks
    list
    # Ask the user which one he wants to remove (index)
    index = @view.ask_user_for_index
    # Remove it from the repository
    @repository.remove_task(index)
  end

  def mark_as_done
  end
end
