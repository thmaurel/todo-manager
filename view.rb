# USER INTERACTION

class View
  def display(tasks)
    tasks.each_with_index do |task, index|
      puts "#{index} #{task.name}. Priority: #{task.priority}. Due date: #{task.due_date}. Done? #{task.done}"
    end
  end

  def ask_user_for(something)
    puts "What's the #{something} ?"
    return gets.chomp
  end

  def ask_user_for_index
    puts "Which one do you want to remove?"
    return gets.chomp.to_i
  end
end



