    def add(numbers)
        return 0 if numbers.empty?
        nums = replace_newline_char(numbers)
        nums = replace_custom_delimiter(nums)
        sum = final_sum(nums)
    end

    def replace_custom_delimiter(str)
        str_after_delimiter_removal = str.gsub(/[^[:alnum:]-]/, " ") 
        str_after_delimiter_removal
    end

    def final_sum(nums)
        numbers = nums.split(/\s+/).map(&:to_i)
        sum = numbers.reject { |num| num > 1000 }.sum
        return sum
    end

    def replace_newline_char(str)
        split_string = str.split('\n')
        return split_string.join(" ")
    end

    def find_delimiters(s)
        delimiters = Set.new
        if s.start_with?('\\\\')
          s.each_char do |char|
            unless char.match?(/[[:alnum:]]/)
              delimiters.add(char)
            end
          end
        end
        delimiters
      end
    
    def main()
        while true
        input = gets.chomp
    
        begin
            result = add(input)
            puts "Result: #{result}"
        rescue => exception
            puts "Error: #{exception}"
        end
        end
    end
    
    main()
