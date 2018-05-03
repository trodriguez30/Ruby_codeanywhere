# Raindrops class
class Raindrops
  def self.convert(num)
    raindrops = ''
    factors = factors(num)
    raindrops += 'Pling' if factors.include? 3
    raindrops += 'Plang' if factors.include? 5
    raindrops += 'Plong' if factors.include? 7
    raindrops = num.to_s if raindrops == ''
    raindrops
  end

  def self.factors(num)
    factors = []
    i = 1
    until i > num
      factors << i if (num % i).zero?
      i += 1
    end
    factors
  end
end
