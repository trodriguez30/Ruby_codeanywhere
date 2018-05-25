module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end

# Rna Transcription class
class Complement
  def self.of_dna(dna)
    rna = []
    rna = replace(dna) unless /[BD-FH-SU-Z]/=~dna
    rna.join('')
  end

  def self.replace(dna)
    rna = []
    dna.length.times do |i|
      case dna[i]
      when 'G' then rna << 'C'
      when 'C' then rna << 'G'
      when 'T' then rna << 'A'
      when 'A' then rna << 'U'
      end
    end
    rna
  end
end
