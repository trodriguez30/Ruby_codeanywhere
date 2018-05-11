# class grains
class Grains
  def self.square(square)
    raise ArgumentError if (square <= 0) || (square > 64)
    grains = 1
    2.upto square do
      grains *= 2
    end
    grains
  end

  def self.total
    total = 0
    (1..64).each do |x|
      total += square(x)
    end
    total
  end
end
