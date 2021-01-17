require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
binding.pry
### EMPLOYEES
employee1 = Employee.new("Chris", 100_000) #Has 1 Manager, 1 Role
employee2 = Employee.new("Kwaku", 200_000) #Has 2 Managers, 1 Role
employee3 = Employee.new("Max", 3) #Has 0 Managers, 1 Role
employee4 = Employee.new("Stanley", 3000) #Has 0 Managers, 1 Role

### MANAGERS
manager1 = Manager.new("Michael", "General", 42) #Has 
manager2 = Manager.new("Elon", "Marketing", 33)
manager3 = Manager.new("Bill Gates", "Sales", 65)
manager4 = Manager.new("Steve Jobs", "Tech", 100)

role1 = Role.new("Sales", manager3, employee1)
role2 = Role.new("Tech", manager4, employee2)
role3 = Role.new("Marketing", manager2, employee3)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line

### EMPLOYEES ARE THE CONNECTOR?????