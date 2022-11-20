require "./methods.rb"
require "./draw.rb"
def main()
    true_answer = get_word
    true_answer.pop()
    сorrect_letter = []
    incorrect_letter = []
    errors = 0

   # puts true_answer.to_s
    puts "Вітаю у грі шибениця!"
    until errors == 6 
        game_status(true_answer,сorrect_letter,incorrect_letter,errors)
        puts "\nВведіть наступну букву"
        user_input = get_user_input
        res = game_result(user_input,true_answer,сorrect_letter,incorrect_letter,errors)

        if(res == -1)
            errors += 1
        elsif(res == 1)
            break
        end
    end
    game_status(true_answer,сorrect_letter,incorrect_letter,errors)
end

main()