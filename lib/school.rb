class School
attr_reader :school, :name
attr_accessor :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end    

    def add_student(name, grade)
        if roster[grade]
            roster[grade] << name
        else
            roster[grade] = [name]
        end
    end

    def grade(grade_level)
        roster[grade_level]
    end

    def sort
        roster.each {
            |key, values| values.sort!
        }
    end
          
end