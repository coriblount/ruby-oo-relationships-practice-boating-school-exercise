require 'pry'

class Student

attr_accessor :first_name, :last_name

 @@all = []

def initialize(first_name)
    @first_name = first_name
    @@all << self
end 

def self.all
    @@all
end

def add_boating_test(name, status, instructor)
    BoatingTest.new(self, name, status, instructor )
end

def all_instructors
    instructors.all.select do |instructors|
        instructors.boatingtest == instructors
    end
end

def self.find_student
    self.all.select {|student| self.first_name == students.first_name}
end

def grade_percentage
    student_test = student.all.select {|test| test.students.first_name == self.first_name}
    number_of_test = student_test.to_f
    test_passed = test.all.find do |test| test.student == "passed"
    number_of_test_passed = test_passed.to_f
    percent = (test_passed/number_of_test) * 100
        binding.pry
    end
end

end
