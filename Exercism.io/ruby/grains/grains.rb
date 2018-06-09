# class grains
class Grains
  def self.square(square)
    raise ArgumentError unless square.between?(1, 64)
    2**(square - 1)
  end

  def self.total
    (1..64).inject { |total, n| total + square(n) }
  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
