def add(numbers)
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
  