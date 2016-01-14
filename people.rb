# Exercise 1: Class Time
class Person # Parent class
    attr_accessor :name

    def greeting
        "Hi, my name is #{@name}"
    end
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
kaelyn.name = "Kaelyn"

mina = Instructor.new
mina.name = "Mina"


puts kaelyn.greeting
puts kaelyn.learn

puts mina.greeting
puts mina.teach
