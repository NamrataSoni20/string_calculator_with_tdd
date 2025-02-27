class Add
  def self.add(string_numbers)
    # Split the input string into an array of numbers
    numbers = string_numbers.split(',').map(&:to_i)

    # Calculate the sum of the numbers
    sum = numbers.inject(0, :+)

    # Return the sum
    sum
  end
end