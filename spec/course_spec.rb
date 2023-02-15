require './lib/course'
require './lib/student'

RSpec.describe Course do
  before(:each) do
    @gradebook = Gradebook.new("Mr. Stack")
    @calculus = Course.new("Calculus", 2) 
    @history = Course.new("History", 4)
    @science = Course.new("Science", 3)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29}) 
    @student3 = Student.new({name: "Andy", age: 25})
    
  end

  describe '#initialize' do
    it 'can initialize' do
      expect(@calculus).to be_an_instance_of(Course)
      expect(@calculus.name).to eq('Calculus')
      expect(@calculus.capacity).to eq(2)
      expect(@calculus.students).to eq([])
    end
  end

  describe '#enroll' do
    it 'can add a student to the students array' do
      @calculus.enroll(@student1)
      @calculus.enroll(@student2)
      
      expect(@calculus.students).to eq([@student1, @student2])
    end
  end

  describe '#full?' do
    it 'returns a boolean depending if a parameter is met' do
      expect(@calculus.full?).to be false

      @calculus.enroll(@student1)
      @calculus.enroll(@student2)

      expect(@calculus.full?).to be true
    end
  end
end