class Role


    @@all = []

    def self.all
        @@all
    end

    attr_accessor :name
    attr_reader :manager, :employee
    
    def initialize(name, manager, employee)
        @name = name
        @manager = manager
        @employee = employee
        self.class.all << self
    end

    def employees
    end
end