module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

# class leap
class Year
  def self.leap?(year)
    ((year % 4).zero? && !(year % 100).zero?) || (year % 400).zero?
  end
end
