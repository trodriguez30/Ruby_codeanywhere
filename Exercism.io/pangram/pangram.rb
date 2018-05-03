# class Pangram
class Pangram
  def self.pangram?(phrase)
    phrase.downcase!
    ('a'..'z').all? { |letter| phrase.include? letter }
  end
end
