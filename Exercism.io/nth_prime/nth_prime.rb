require 'prime'

# class Nth prime
class Prime
  def self.nth(num)
    raise ArgumentError if num.zero?
    nth = Prime.first num
    nth.last
  end
end
