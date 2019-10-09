class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, add)
        roster[add] ||= []
        roster[add] << student
    end

    def grade(add)
        roster.detect do | x, y|
            if x == add
                return y
            end
        end
    end

    def sort 
        nu_hash = {}
        roster.each do |x, y| 
          nu_hash[x] = y.sort 
        end 
        nu_hash
    end    
end