require './lib/course'
require './lib/student'

RSpec.describe Course do
  before(:each) do
    @course = Course.new("Calculus", 2) 
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})   
  end

  describe '#initialize' do
    it 'can initialize' do
      expect(@course).to be_an_instance_of(Course)
      expect(@course.name).to eq('Calculus')
      expect(@course.capacity).to eq(2)
      expect(@course.students).to eq([])
    end
  end

  describe '#full?' do
    it 'returns a boolean depending if a parameter is met' do
      expect(@course.full?).to be false
    end
  end
end