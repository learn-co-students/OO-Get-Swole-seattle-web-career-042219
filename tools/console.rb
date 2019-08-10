# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

#  name, lift_total
l1 = Lifter.new("Ada", 100)
l2 = Lifter.new("Bob", 200)
l3 = Lifter.new("Cate", 300)

# name
g1 = Gym.new("L.A. Fitness")
g2 = Gym.new("24 Hr. Fitness")
g3 = Gym.new("Gold's Gym")

# gym, lifter

m1 = Membership.new(10, g1, l1)
m2 = Membership.new(20, g2 ,l2)
m3 = Membership.new(30, g3, l3)
m4 = Membership.new(40, g1, l2)
m5 = Membership.new(50, g1, l3)
m6 = Membership.new(60, g2, l1)

Pry.start

puts "Gains!"
