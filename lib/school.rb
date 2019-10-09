class School
    attr_accessor :name, :roster, :grade, :add_student

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade] << student

    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        new_roster = {}
        @roster.each do |grade, students|
          new_roster[grade] = students.sort
        end
        new_roster
    end




end