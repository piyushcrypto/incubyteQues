    def add(numbers)
        return 0 if numbers.empty?
        nums = replace_newline_char(numbers)
        nums = replace_custom_delimiter(nums)
        negative_present = find_negative_numbers(nums)
        if negative_present.any?
            raise "Negative numbers not allowed: #{negative_present.join(', ')}"
            return
        end
        sum = final_sum(nums)
    end

    def replace_custom_delimiter(str)
        str_after_delimiter_removal = str.gsub(/[^[:alnum:]-]/, " ") 
        str_after_delimiter_removal
    end

    def final_sum(nums)
        numbers_arr = nums.split(/\s+/).map(&:to_i)
        sum = numbers_arr.reject { |num| num > 1000 }.sum
        return sum
    end

    def find_negative_numbers(string)
        negative_numbers = string.split(" ").map(&:to_i).select { |num| num < 0 }
        return negative_numbers
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
            puts result
        rescue => exception
            puts exception
        end
        end
    end
    
    main()
