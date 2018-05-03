# class Squares
class Squares
  @num = 0
  def initialize(num)
    @num = num
  end

  def square_of_sum
    i = 1
    square = 0
    until i > @num
      square += i
      i += 1
    end
    square**2
  end

  def sum_of_squares
    i = 1
    square = 0
    until i > @num
      square += i**2
      i += 1
    end
    square
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
