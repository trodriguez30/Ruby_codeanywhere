# Raindrops class
class Raindrops
  def self.convert(num)
    raindrops = ''
    raindrops += 'Pling' if (num % 3).zero?
    raindrops += 'Plang' if (num % 5).zero?
    raindrops += 'Plong' if (num % 7).zero?
    raindrops = num.to_s if raindrops == ''
    raindrops
  end
end
