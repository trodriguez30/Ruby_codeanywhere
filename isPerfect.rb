def isPerfect (n) 
    arr = []
    sum=0
    n.times do |i|
      if i == 0
        next
      end 
      if n % i == 0 
         arr << i
      end 
    end
    arr.length.times do |x|
      sum += arr[x]
    end 
  
  puts n == sum ? "#{n} is perfect!" : "#{n} is not perfect!" 
       
end 
 
puts "Enter a number: " 
n = gets.chomp.to_i 
 
isPerfect(n)