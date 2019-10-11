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

  def grade(grade)
    @roster.map { |key, value| return value if key == grade }
  end

  def sort
    @roster.map { |key, value| value.sort! }
    return @roster
  end

end