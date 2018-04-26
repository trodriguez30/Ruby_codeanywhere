def isPerfect (n) 
    arr = []
    sum=0
    n.times do |i|
      next if i == 0
      if n % i == 0 
         arr << i
      end 
    end
    arr.each do |x|
     sum += x
    end 
  
  puts n == sum ? "#{n} is perfect!" : "#{n} is not perfect!" 
       
end 
 
puts "Enter a number: " 
n = gets.to_i 
 
isPerfect(n)