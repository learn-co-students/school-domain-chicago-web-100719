class School
    attr_accessor :roster, :name 

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(students_name, grade)
        roster[grade] ||= []
        roster[grade]  << students_name
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
          sorted[grade] = students.sort
        end
        sorted
      end

end