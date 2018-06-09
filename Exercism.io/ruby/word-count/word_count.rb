module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end

# class Phrase
class Phrase
  @phrase = ''
  def initialize(phrase)
    @phrase = phrase.downcase
    @phrase.gsub!(/'\s|\s'/, ' ')
  end

  def word_count
    counts = Hash.new(0)
    arr = @phrase.scan(/[-'\w]+/)
    arr.each { |i| counts.store(i, arr.count(i)) }
    counts
  end
end
