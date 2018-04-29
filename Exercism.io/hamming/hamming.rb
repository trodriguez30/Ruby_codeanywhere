# Hamming class
class Hamming
  def self.compute(dna1, dna2)
    cont = 0
    raise ArgumentError unless dna1.length == dna2.length
    dna1.length.times do |i|
      cont += 1 if dna1[i] != dna2[i]
    end
    cont
  end
end
