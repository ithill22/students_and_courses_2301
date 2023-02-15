require './lib/gradebook'
require './lib/course'
require './lib/student'

RSpec.describe Gradebook do
  before(:each) do
    @gradebook = Gradebook.new("Mr. Stack")
    @calculus = Course.new("Calculus", 2) 
    @history = Course.new("History", 4)
    @science = Course.new("Science", 3)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29}) 
    @student3 = Student.new({name: "Andy", age: 25})

    @calculus.enroll(@student1)
    @history.enroll(@student2)
    @history.enroll(@student3)
    
  end

  describe '#initialize' do
    it 'can initialize' do
      expect(@gradebook).to be_an_instance_of(Gradebook)
      expect(@gradebook.instructor).to eq('Mr. Stack')
      expect(@gradebook.courses).to eq([])
    end
  end

  describe '#add_course' do
    it 'can add a course to courses array' do
      @gradebook.add_course(@calculus)
      @gradebook.add_course(@history)

      expect(@gradebook.courses).to eq([@calculus, @history])
    end
  end

  describe '#list_all_students' do
    it 'can return a hash of a course(key) with students(value)' do
      @gradebook.add_course(@calculus)
      @gradebook.add_course(@history)
      # @calculus.enroll(@student1)
      # @history.enroll(@student2)
      # @histroy.enroll(@student3)

      expect(@gradebook.list_all_students).to eq({Calculus: [@student1], History: [@student2, @student3]})
    end
  end
end