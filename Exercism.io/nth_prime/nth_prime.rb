# class Nth prime
class Prime
  @prime = []

  def self.nth(num)
    raise ArgumentError if num.zero?
    @prime.clear
    x = 2
    @prime << 2
    while @prime.length < num
      x += 1
      next if (x % 2).zero?
      add(x)
    end
    @prime.last
  end

  def self.add(num)
    cont = 0
    @prime.each do |i|
      break if i > Math.sqrt(num)
      cont += 1 if (num % i).zero?
    end
    @prime << num if cont.zero?
  end
end
