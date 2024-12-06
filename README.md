Task Manager
A simple command-line Task Manager built in Ruby. This program allows you to manage your tasks with operations like adding, viewing, updating, and deleting tasks. Tasks are stored persistently in a JSON file.

Features
Add Task: Create a new task with a title and description.
View Tasks: Display all tasks with details like ID, title, description, and status.
Update Task: Modify the title, description, or status of an existing task.
Delete Task: Remove a task by its ID.
Data Persistence: Tasks are saved in a tasks.json file and persist between program runs.
Prerequisites
Ruby installed on your system (version 2.5 or later).
Basic understanding of running Ruby scripts.
How to Use
1. Clone the Repository
bash
Copy code
git clone https://github.com/ankitkumarvarshney/TaskMgmt.git
cd task-manager
2. Run the Program
bash
Copy code
ruby task_manager.rb
3. Follow the On-Screen Menu
plaintext
Copy code
Task Manager
1. Add Task
2. View Tasks
3. Update Task
4. Delete Task
5. Exit
Choose an option:
JSON File
The program uses a file named tasks.json to store tasks. This file is automatically created in the working directory if it doesn’t exist.

Example tasks.json file:
json
Copy code
[
  {
    "id": 1,
    "title": "Buy groceries",
    "description": "Milk, bread, eggs",
    "status": "Pending"
  },
  {
    "id": 2,
    "title": "Complete project",
    "description": "Finish Ruby task manager project",
    "status": "Completed"
  }
]
Future Enhancements
Add deadlines for tasks.
Include priority levels.
Implement task filtering and searching.
Add a web-based interface using frameworks like Ruby on Rails or Sinatra.
Contributing
Contributions are welcome! Feel free to fork this repository and submit pull requests.

