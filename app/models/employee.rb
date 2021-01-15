class Employee

    @@all = []

    def self.all
        @@all
    end

    attr_accessor :name, :salary, 
    
    def initialize(name, salary)
        @name = name
        @salary = salary
        self.class.all << self
    end

end
