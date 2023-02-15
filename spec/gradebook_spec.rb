require './lib/gradebook'
require './lib/course'
require './lib/student'

RSpec.describe Gradebook do
  before(:each) do
    @gradebook = Gradebook.new("Mr. Stack")
    @course = Course.new("Calculus", 2) 
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29}) 
  end

  describe '#initialize' do
    it 'can initialize' do
      expect(@gradebook).to be_an_instance_of(Gradebook)
      expect(@gradebook.instructor).to eq('Mr. Stack')
      expect(@gradebook.courses).to eq([])
    end
  end
end