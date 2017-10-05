# Takes user input and produces grade info dependent on final exam
def check_input(input)
    if input < 0 or input > 100
            raise 'Invalid Input' # create an exception, as grades should always be between 0 and 100
    end
end

def main
    puts("Current Class Grade (0.0-100.0):")
    begin
        current = Float(STDIN.gets())
        check_input(current)
        puts("Final Percentage in Class Grade (0.0-100.0):")
        final = Float(STDIN.gets())
        check_input(final)
        rest = 100 - final # percentage of grade not determined by final exam
        rest_grade = rest * current/100 # current grade, weighted to account for final exam
        perfect_rest = rest_grade + final
        puts("Overall percentage required to pass (0.0-100.0):")
        overall = Float(STDIN.gets())
        check_input(overall)
        puts("If you did not take the final, your grade would be #{rest_grade}")
        puts("With a perfect score on the final, your grade would be #{perfect_rest}")
        min_final = (overall-rest_grade)*100/final
        if min_final <= 0 
            puts("You can pass with a 0 on the final!")
        elsif min_final > 100
            puts("You cannot pass, RIP you") # An attempt at comedy to help people who are going to fail feel better
        else
            puts("Minimum final grade to pass is #{min_final}")
        end
    rescue
        puts("Invalid values, please input a number between 0 and 100.")
        main # restart the main method in an attempt to recieve proper values
    end
end

main
