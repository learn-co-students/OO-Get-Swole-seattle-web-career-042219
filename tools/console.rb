# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

#lifter objects
jerry = Lifter.new("Jerry", 10)
elaine = Lifter.new("Elaine", 20)
george = Lifter.new("George", 30)
kramer = Lifter.new("Kramer", 40)
newman = Lifter.new("Newman", 50)
puddy = Lifter.new("Puddy", 60)

#gym objects
barrecor = Gym.new("Barrecor")
golds = Gym.new("Golds")

#membership
m1 = Membership.new(20, jerry, golds)
m2 = Membership.new(30, elaine,barrecor)
m3 = Membership.new(20, jerry, barrecor)

Pry.start

puts "Gains!"
