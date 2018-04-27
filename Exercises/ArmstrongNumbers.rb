def armstrongNumber(n)
  acum=0
  arr=n.to_s.split('').map(&:to_i)
  dig=arr.length
  arr.each do |x|
    acum += x ** dig
  end 
  puts acum == n ? "#{n} is an Armstrong number" : "#{n} is not an Armstrong number"
end 

puts 'Enter a number:'
num = gets.chomp.to_i

armstrongNumber(num)