module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end

# class Squares
class Squares
  @num = 0
  def initialize(num)
    @num = num
  end

  def square_of_sum
    square = 0
    (1..@num).each do |i|
      square += i
    end
    square**2
  end

  def sum_of_squares
    square = 0
    (1..@num).each do |i|
      square += i**2
    end
    square
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
