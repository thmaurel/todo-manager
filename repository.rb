# STORE YOUR TASKS

class Repository
  def initialize
    @tasks = []
  end

  def all
    @tasks
  end

  def add_task(new_task)
    @tasks << new_task # Instance of Task
  end

  def remove_task(task_index)
    @tasks.delete_at(task_index)
  end
end
