def hamming(dna1,dna2)
  puts "Hamming: \n#{dna1} \n#{dna2}"
  cont = 0
  arr=[]
    if dna1.length==dna2.length
     x=dna1.length
     x.times do |i|
         unless dna1[i] == dna2[i]
           cont += 1
           arr << '^'
         else 
           arr << ' '
         end 
     end
    puts arr.join('')
    puts "The hamming distance is #{cont}"
  else 
    puts 'the length of the strands has to be equals.'
  end 
end 

puts 'Enter DNA #1:'
dna1 = gets.chomp.upcase

puts 'Enter DNA #2:'
dna2 = gets.chomp.upcase

hamming(dna1, dna2)