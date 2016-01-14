# Exercise 1: Class Time
class Person # Parent class
    attr_accessor :name

    def greeting
        "Hi, my name is #{name}."
    end
end


class Student < Person
    def learn
        puts "I get it."
    end
end

class Instructor < Person
    def teach
        puts "Everything in Ruby is an Object."
    end
end

chris = Instructor.new # create instances
chris.name = "Chris" # assign name

cristina = Student.new
cristina.name = "Cristina"


puts chris.greeting
puts chris.teach

puts cristina.greeting
puts cristina.learn
