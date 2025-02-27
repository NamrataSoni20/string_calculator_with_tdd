class Add
  def self.add(input_str)
    # Default delimiter
    delimiter = ","

    # Check if the input string starts with a custom delimiter definition
    if input_str.start_with?("//")
      # Extract custom delimiter and numbers string
      delimiter, string_numbers = input_str.split("\n", 2)
      delimiter = delimiter[2..-1]  # Remove "//" prefix
    else
      string_numbers = input_str
    end
     # Replace custom delimiter with comma and split the numbers
     numbers = string_numbers.split(/[#{delimiter}\n]/)
     numbers = input_str.scan(/-?\d+/).map(&:to_i)
     # Filter out negative numbers
     negative_numbers = numbers.select { |num| num < 0 }
  
     if negative_numbers.empty?
      # Calculate the sum of the numbers
      sum = numbers.inject(0, :+)
     
      # Return the sum
      return sum
     else
       return "Negative numbers not allowed: #{negative_numbers.join(', ')}"
     end 
  end
end