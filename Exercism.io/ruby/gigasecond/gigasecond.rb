module BookKeeping
  VERSION = 6 # Where the version number matches the one in the test.
end

# Gigasecond class
class Gigasecond
  def self.from(birthdate)
    birthdate + (10**9)
  end
end
