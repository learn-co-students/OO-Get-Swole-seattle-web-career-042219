# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

rachel = Lifter.new("Rachel", 100)
colin = Lifter.new("Colin", 300)
george = Lifter.new("George", 400)

gym1 = Gym.new("CalFit")
gym2 = Gym.new("24 Hour Fitness")

mem1 = Membership.new(60, rachel, gym1)
mem2 = Membership.new(30, rachel, gym2)
mem3 = Membership.new(60, colin, gym1)
mem4 = Membership.new(30, george, gym1)

binding.pry

puts "Gains!"
