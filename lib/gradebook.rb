require './lib/course'

class Gradebook
  attr_reader :instructor, :courses
  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def list_all_students
    students = {}
    @courses.each do |course|
      students[course.name.to_sym] = course.students
    end
    students
  end
end
