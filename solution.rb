    def add(numbers)
        nums = numbers.split(',')
        nums.map!(&:to_i)
        sum = nums.sum
        return sum
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
  
# piyush@piyush-Nitro-AN515-52:~/Desktop/incubyteQues$ ruby solution.rb
# 1,2,3,4
# Result: 10
# 1,2,3,4,10
# Result: 20
# 1,2,3,4,50,61,3
# Result: 124