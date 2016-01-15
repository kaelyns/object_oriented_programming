# Mars Rover
class Rovers
    attr_accessor :x, :y, :dir, :control
    def plateau_size
        input2 = gets.strip.split("")
    end

    def read_instruction
        input2 = gets.strip.split("")
        x = input2[0].to_i
        y = input2[2].to_i
        dir = input2[4]

        input3 = gets.strip.split("")
        while input3[0] != nil
            control = input3[0] #possibilities; LRM
            if control == "L"
                if dir == "N"
                    dir = "W"
                elsif dir == "E"
                    dir = "N"
                elsif dir == "S"
                    dir = "E"
                else # dir == "W"
                    dir = "S"
                end
                input3.delete_at(0)
            elsif control == "R"
                if dir == "N"
                    dir = "E"
                elsif dir == "E"
                    dir = "S"
                elsif dir == "S"
                    dir = "W"
                else # dir == "W"
                    dir = "N"
                end
                input3.delete_at(0)
            else #control == "M"
                if dir == "N"
                    y += 1
                elsif dir == "E"
                    x += 1
                elsif dir == "S"
                    y -= 1
                else # dir == "W"
                    x -= 1
                end
                input3.delete_at(0)
            end
        end
        # puts "#{x} #{y} #{dir}"
        return "#{x} #{y} #{dir}"
    end

end

plateau = Rovers.new
rover1 = Rovers.new
rover2 = Rovers.new

puts "Input: "
plateau.plateau_size
x = rover1.read_instruction
y = rover2.read_instruction

puts "Output: "
puts x
puts y
