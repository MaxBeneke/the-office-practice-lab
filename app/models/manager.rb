class Manager

    @@all = []

    def self.all
        @@all
    end

    attr_accessor :name, :department, :age
    
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        self.class.all << self
    end

    def employees
       Employee.all.select{|employee| employee.manager == self} 
    end

    def roles
        arr = []
        
        self.employees.each{|employee| 
        arr << employee.role}

        arr
    end

    def self.all_departments
        arr = []
        self.all.each{|manager| arr << manager.department}
        arr.uniq
    end

    def self.average_age
        age_total = 0

        self.all.each{|manager| age_total += manager.age}

        (age_total.to_f / self.all.count)
    end




end
