def main
    puts("Current Class Grade (0.0-100.0):")
    begin
        current = Float(STDIN.gets())
        if current < 0 or current > 100
            raise 'Invalid Input'
        end
        puts("Final Percentage in Class Grade (0.0-100.0):")
        final = Float(STDIN.gets())
        if final < 0 or final > 100
            raise 'Invalid Input'
        end
        rest = 100 - final
        rest_grade = rest * current/100
        perfect_rest = rest_grade + final
        puts("Overall percentage required to pass (0.0-100.0):")
        overall = Float(STDIN.gets())
        if overall < 0 or overall > 100
            raise 'Invalid Input'
        end
        puts("If you did not take the final, your grade would be #{rest_grade}")
        puts("With a perfect score on the final, your grade would be #{perfect_rest}")
        min_final = (overall-rest_grade)*100/final
        if min_final <= 0 
            puts("You can pass with a 0 on the final!")
        elsif min_final > 100
            puts("You cannot pass, RIP you")
        else
            puts("Minimum final grade to pass is #{min_final}")
        end
    rescue
        puts("Invalid values, please input a number between 0 and 100.")
        main
    end
end
main
