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
     numbers = string_numbers.split(/[#{delimiter}\n]/).map(&:to_i)

     # Calculate the sum of the numbers
     sum = numbers.inject(0, :+)

     # Return the sum
     sum
  end
end