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
    end



end
