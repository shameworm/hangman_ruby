def get_word
    f = File.new("words", "r")
    lines = f.readlines
    f.close
    return lines.sample.split("")
end

def get_user_input
    letter = ""

    while letter == ""
        letter = gets.chomp
    end

    return letter
end

def game_status(true_answer,correct_letter,incorrect_letter,errors)
    draw_logic(errors)
    puts "\nСлово: " + word_print(true_answer, correct_letter) 
    puts "Помилки (#{errors}) :#{incorrect_letter.join(", ")}"

    if errors >= 7
        puts "Ви програли("
        puts "Загадане слово: #{true_answer}"
    else
        if true_answer.uniq.size == correct_letter.size
            puts "Вітаю з перемогою!\n\n "
        else
            puts "Залишилось спроб: #{7-errors}"
        end
    end
end

def word_print(true_answer, correct_letter)
    res = ""

    for letter in true_answer
        if correct_letter.include?(letter)
            res += letter + " "
        else
            res += "___ "
        end
    end

    return res
end

def game_result(user_input, true_answer,correct_letter,incorrect_letter,errors)
    if(correct_letter.include?(user_input) || incorrect_letter.include?(user_input))
        return 0
    end

    if (true_answer.include?(user_input))
        correct_letter << user_input

        if (true_answer.uniq.size == correct_letter.size)
            return 1
        else
            return 0
        end
    else
        incorrect_letter << user_input
        return -1
    end
end
