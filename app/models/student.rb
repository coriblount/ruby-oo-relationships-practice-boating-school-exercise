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

def add_boating_test(name,status,instructor)
    BoatingTest.new(self, name, status, instructor )
end

def all_instructors
    self.all.find {|students| self.first_name == students.first_name}
end

end
