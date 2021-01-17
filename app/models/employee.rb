
# * Employee is initialized with a name and salary. All of these attributes can change.
# * `Employee#name`
#   * returns a `String` that is the employee's name
# * `Employee#salary`
#   * returns a `Fixnum` that is the employee's salary
# * `Employee#manager`
#   * returns an instance of their manager
# * `Employee#role`
#   * returns an instance of their role
# * `Employee.all`
#   * returns an `Array` of all the employees
# * `Employee.paid_over`
#   * takes a `Fixnum` argument and returns an `Array` of all the employees whose salaries are over that amount
# * `Employee.find_by_department`
#   * takes a `String` argument that is the name of a department and returns the first employee whose manager is working in that department
# * `Employee.search_by_role`
#   * takes a `String` argument that is the name of a role and returns all the employees who work at that role
# * `Employee#get_promoted`
#   * takes an argument of an instance of a Role, updates Employee's role and increases Employee's salary.
# ​



class Employee

    

    @@all = []

    def self.all
        @@all
    end

    attr_accessor :name, :salary 
    
    def initialize(name, salary)
        @name = name
        @salary = salary
        self.class.all << self
    end

    def manager
        finally_manager = ""
        Role.all.each do |role|
            role.employee == self
          finally_manager =  role.manager
        end
        finally_manager
    end

    def role

        Role.all.find{|role|role.employee == self}

    end

    def self.paid_over(number)

        Employee.all.select{|employee|employee.salary > number}

    end


def self.find_by_department(department_parameter)

    Role.all.find{|role|
    if role.manager.department == department_parameter 
    
    return role.employee
    end}

end

def self.search_by_role(role_parameter)

    Role.all.select{|role|
  if  role.name == role_parameter 

return 

} 



end

end


