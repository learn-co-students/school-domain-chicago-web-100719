# code here!
require "pry"
class School
attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade]
        @roster[grade] << name
        else 
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(num)
        roster.map do |grade, names|
            if num == grade
                return names
            end
        end
    end

    def sort
        @roster.each do |grade, names|
            names.sort!
        end

    end

end