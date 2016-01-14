# Exercise 1: Class Time
class Person
    attr_accessor :name

end


class Student < Person
    def learn
        puts "I get it"
    end
end

class Instructor < Person
    def teach
        puts "Everything in Ruby is an Object"
    end

end


kaelyn = Student.new
mina = Instructor.new

puts kaelyn.learn
puts mina.teach
