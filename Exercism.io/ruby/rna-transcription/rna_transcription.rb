module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end

# Rna Transcription class
class Complement
  def self.of_dna(dna)
    return '' if /[^GCTA]/ =~ dna
    dna.chars.map { |i| to_rna(i) }.join
  end

  def self.to_rna(nucleotide)
    case nucleotide
    when 'G' then 'C'
    when 'C' then 'G'
    when 'T' then 'A'
    when 'A' then 'U'
    end
  end
end
