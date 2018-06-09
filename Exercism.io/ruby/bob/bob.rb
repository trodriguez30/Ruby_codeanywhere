module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end

# Class Bob
class Bob
  def self.hey(remark)
    remark.gsub!(/\s+/, '')
    if remark.end_with?('?')
      upcase?(remark) ? 'Calm down, I know what I\'m doing!' : 'Sure.'
    elsif upcase?(remark)
      'Whoa, chill out!'
    elsif remark.empty?
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end

  def self.upcase?(remark)
    remark.match(/[A-Z]/) && remark.upcase == remark
  end
end
