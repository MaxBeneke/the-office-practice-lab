class Role


    @@all = []

    def self.all
        @@all
    end

    attr_accessor :name
    
    def initialize(name)
        @name = name
        self.class.all << self
    end

    def employees
        Employee.all.select{|employee| employee.role == self}
    end

    def managers
        arr = []
        self.employees.each{|employee| 
        arr << employee.manager}

        arr.uniq
    end

    def add_employee(name, salary, manager)
        Employee.new(name, salary, self, manager)
    end


end