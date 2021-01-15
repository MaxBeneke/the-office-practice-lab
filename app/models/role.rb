class Role
    @@all = []

    def self.all
        @@all
    end

    attr_accessor :name,
    
    def initialize(name)
        @name = name
        self.class.all << self
    end

    def employees
        Employee.all.select
    end
end