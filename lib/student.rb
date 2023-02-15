class Student
  attr_reader :name, :age, :scores
  def initialize(name_age)
    @name = name_age[:name]
    @age = name_age[:age]
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade
    @scores.sum(0.0) / @scores.size
  end
end
