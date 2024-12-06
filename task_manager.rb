require 'json'

# File to store tasks
FILE_NAME = 'tasks.json'

# Initialize tasks storage
def load_tasks
  File.exist?(FILE_NAME) ? JSON.parse(File.read(FILE_NAME)) : []
end

def save_tasks(tasks)
  File.write(FILE_NAME, JSON.pretty_generate(tasks))
end

# Display menu options
def menu
  puts "\nTask Manager"
  puts "1. Add Task"
  puts "2. View Tasks"
  puts "3. Update Task"
  puts "4. Delete Task"
  puts "5. Exit"
  print "Choose an option: "
end

# Add a new task
def add_task(tasks)
  print "Enter task title: "
  title = gets.chomp
  print "Enter task description: "
  description = gets.chomp
  tasks << { id: tasks.size + 1, title: title, description: description, status: 'Pending' }
  puts "Task added successfully!"
end

# View all tasks
def view_tasks(tasks)
  if tasks.empty?
    puts "No tasks available."
  else
    puts "\nTasks:"
    tasks.each do |task|
      puts "ID: #{task['id']}, Title: #{task['title']}, Description: #{task['description']}, Status: #{task['status']}"
    end
  end
end

# Update an existing task
def update_task(tasks)
  print "Enter task ID to update: "
  id = gets.to_i
  task = tasks.find { |t| t['id'] == id }
  
  if task
    print "Enter new title (leave blank to keep current): "
    title = gets.chomp
    print "Enter new description (leave blank to keep current): "
    description = gets.chomp
    print "Enter new status (Pending/Completed): "
    status = gets.chomp
    
    task['title'] = title unless title.empty?
    task['description'] = description unless description.empty?
    task['status'] = status unless status.empty?
    puts "Task updated successfully!"
  else
    puts "Task not found!"
  end
end

# Delete a task
def delete_task(tasks)
  print "Enter task ID to delete: "
  id = gets.to_i
  if tasks.reject! { |task| task['id'] == id }
    puts "Task deleted successfully!"
  else
    puts "Task not found!"
  end
end

# Main program loop
tasks = load_tasks

loop do
  menu
  case gets.to_i
  when 1
    add_task(tasks)
  when 2
    view_tasks(tasks)
  when 3
    update_task(tasks)
  when 4
    delete_task(tasks)
  when 5
    save_tasks(tasks)
    puts "Goodbye!"
    break
  else
    puts "Invalid option, please try again."
  end
end
