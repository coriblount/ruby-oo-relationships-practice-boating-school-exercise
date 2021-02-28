class BoatingTest

    @@all = []

    def initialize(student, name, status, instructor)
        @name = name
        @student = student 
        @status = status
        @instructor = instructor
        @@all << self
    end


def self.all
@@all
end

end
