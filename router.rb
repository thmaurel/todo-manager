class Router
  def initialize(controller)
    @controller = controller
  end
  def run
    while true
      # Display the menu
      puts "What do you want to do ?"
      puts "1. List all tasks"
      puts "2. Add a task"
      puts "3. Remove a task"
      puts "4. Mark as done"
      # Ask the user for an action
      action = gets.chomp.to_i
      # Perform this action
      case action
      when 1 then @controller.list
      when 2 then @controller.add
      when 3 then @controller.remove
      when 4 then @controller.mark_as_done
      end
    end
  end
end
