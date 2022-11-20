def start_game
    puts "______"
    puts "|     |"
    puts "|      "
    puts "|     "
    puts "|     "
end

def first_mistake
    puts "______"
    puts "|      |"
    puts "|      O"
    puts "|     "
    puts "|     "
end

def second_mistake
    puts "______"
    puts "|      |"
    puts "|      O"
    puts "|      0"
    puts "|     "
end

def third_mistake
    puts "______"
    puts "|      |"
    puts "|      O"
    puts "|     /0"
    puts "|     "
end

def fourth_mistake
    puts "______"
    puts "|      |"
    puts "|      O"
    puts "|     /0\\"
    puts "|     "
end

def fifth_mistake
    puts "______"
    puts "|     |"
    puts "|     O"
    puts "|    /0\\"
    puts "|    / "
end

def end_game
    puts "______"
    puts "|     |"
    puts "|     O"
    puts "|    /0\\"
    puts "|    / \\"
end


def draw_logic(errors)
    case errors
    when 0
        start_game
    when 1
        first_mistake
    when 2
        second_mistake
    when 3
        third_mistake
    when 4
        fourth_mistake
    when 5
        fifth_mistake
    when 6
        end_game
    end
end
