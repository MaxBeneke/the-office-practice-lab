Office Lab
​Welcome to your first day at the Flatiron Mifflin Paper Company. As the Assistant to the Regional Manager, your job is to implement the new Office Management System for both the employees and their managers. Since Michael (your boss) has personally tasked you with this job, you can't disappoint. You are being asked to create a three domain models - a Manager model, a Employee model, and a Role model and build out their relationships!

Here are some questions to consider:​

What are your models?
What does your domain look like?
What are the relationships between your models?
Which model should know about the other in its initialization?​
Before you start
Run bundle to install gems
In order to test your code run from the root directory ruby tools/console.rb
Write all your test code in the console.rb file​
Here are our deliverables:
Keep in mind that in order to properly build out the relationships between the three models, one of these classes will be instantiated with objects of others. This will not be mentioned in the description below, you need to deduce it on your own. Consider where and how this dependency needs to be implemented.​

Manager
[X]Manager is initialized with a name, department and age. All of these attributes can change.
[X]Manager#name
returns a String that is the manager's name
[X]Manager#department
returns a String that is the department that the manager oversees
[X]Manager#age
returns a Fixnum that is the age of the manager
[]Manager#employees
returns an Array of all the employees that the manager oversees
[]Manager#roles
returns an Array of all the roles that the manager oversees
[]Manager.all
returns an Array of all the managers
[]Manager.all_departments
returns an Array of all the department names that every manager oversees without repetitions
[]Manager.average_age
returns a Float that is the average age of all the managers​
Employee
[]Employee is initialized with a name and salary. All of these attributes can change.
[]Employee#name
returns a String that is the employee's name
[]Employee#salary
returns a Fixnum that is the employee's salary
Employee#manager
returns an instance of their manager
Employee#role
returns an instance of their role
Employee.all
returns an Array of all the employees
Employee.paid_over
takes a Fixnum argument and returns an Array of all the employees whose salaries are over that amount
Employee.find_by_department
takes a String argument that is the name of a department and returns the first employee whose manager is working in that department
Employee.search_by_role
takes a String argument that is the name of a role and returns all the employees who work at that role
Employee#get_promoted
takes an argument of an instance of a Role, updates Employee's role and increases Employee's salary.​
Role
Role is initialized with a name, which won't ever change.
Role#name
returns a String that is the role's name
Role#employees
returns an array of all the Employees who work at that role
Role#managers
returns a unique array of all the Manager instances who oversee Employees at that role
Role.all
returns an Array of all the roles
Role#add_employee
takes a String argument of an employee's name, a Fixnum argument of the employee's salary and an instance of a Manager class and creates a new employee who work at this role