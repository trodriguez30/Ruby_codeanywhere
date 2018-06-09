module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

# class RunLengthEncoding
class RunLengthEncoding
  def self.encode(input)
    input.chars.chunk { |c| c }.map do |letter, arr|
      arr.length > 1 ? arr.length.to_s + letter : letter
    end.join
  end

  def self.decode(input)
    input.scan(/(\d+)?(.)/).map do |quantity, letter|
      quantity.to_i > 1 ? (letter * quantity.to_i).to_s : letter
    end.join
  end
end
