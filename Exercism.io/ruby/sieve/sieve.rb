module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end

# class sieve
class Sieve
  @num = 0
  def initialize(num)
    @num = num
  end

  def primes
    primes = (2..@num).to_a
    primes.each do |i|
      primes.delete_if { |x| (x % i).zero? && (x > i) } if (i**2) < @num
    end
  end
end
