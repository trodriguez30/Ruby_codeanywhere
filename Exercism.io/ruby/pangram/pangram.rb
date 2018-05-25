module BookKeeping
  VERSION = 6 # Where the version number matches the one in the test.
end

# class Pangram
class Pangram
  def self.pangram?(phrase)
    phrase.downcase!
    ('a'..'z').all? { |letter| phrase.include? letter }
  end
end
