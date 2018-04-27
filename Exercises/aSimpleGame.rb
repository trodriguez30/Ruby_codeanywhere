class Player
  attr_accessor :name,:health, :power
  def initialize (name, health, power)
    @name = name
    @health = health
    @power = power
  end 
  def isAlive
    @health > 0
  end 
  def to_s
    "Name: #{self.name}, Health: #{self.health}, Power: #{self.power}"
  end 
  def hit(opponent)
    opponent.health -= self.power
  end 
end 
  
def fight(p1, p2)
  puts p1.to_s
  puts p2.to_s
  puts "\nSTART THE FIGHT"
  while p1.health > 0 && p2.health > 0
    p1.hit(p2)
    p2.hit(p1)
    showInfo(p1, p2)
  end 
  if p1.isAlive
    puts "#{p1.name} WON!"
  elsif p2.isAlive
    puts "#{p2.name} WON!"
  else 
    puts 'DRAW!'
  end  
end 

def showInfo(*p)
    p.each do |x|
      puts x
    end 
 end 

puts 'Enter player name 1:'
n1 = gets.chomp.upcase

puts 'Enter player name 2:'
n2 = gets.chomp.upcase

p1= Player.new(n1,100,rand(50))
p2= Player.new(n2,100,rand(50))
fight(p1, p2)

