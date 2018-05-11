# class leap
class Year
  def self.leap?(year)
    true if ((year % 4).zero? && !(year % 100).zero?) || (year % 400).zero?
  end
end
