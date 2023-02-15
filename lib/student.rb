class Student
  attr_reader :name, :age
  def initialize(name_age)
    @name = name_age[:name]
    @age = name_age[:age]
  end
end
