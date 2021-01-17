require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

### MANAGERS
manager1 = Manager.new("Michael", "General", 42) #Has 
manager2 = Manager.new("Elon", "Marketing", 33)
manager3 = Manager.new("Bill Gates", "Sales", 65)
manager4 = Manager.new("Steve Jobs", "Tech", 134)

### ROLES
role1 = Role.new("Finance")
role2 = Role.new("General")
role3 = Role.new("HR")

### EMPLOYEES
employee1 = Employee.new("Chris", 100_000, role2, manager2) #Has 1 Manager, 1 Role
employee2 = Employee.new("Kwaku", 200_000, role3, manager2) #Has 2 Managers, 1 Role
employee3 = Employee.new("Max", 3, role2, manager2) #Has 0 Managers, 1 Role
employee4 = Employee.new("Stanley", 3000, role2, manager3) #Has 0 Managers, 1 Role
binding.pry
0 #leave this here to ensure binding.pry isn't the last line

### EMPLOYEES ARE THE CONNECTOR?????