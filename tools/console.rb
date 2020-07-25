# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
Pry.start

jamal = Lifter.new('Jamal', 20)
danny = Lifter.new('Danny', 23)
jeff = Lifter.new('Jeff', 21)

twenty_four = Gym.new(name: '24-Hour Fitness', cost: 30)
la_fitness = Gym.new(name: 'LA Fitness', cost: 35)
columbia_city = Gym.new(name: 'Columbia City Fitness', cost: 40)

jamal.new_member(twenty_four)
danny.new_member(la_fitness)
jamal.new_member(columbia_city)
jeff.new_member(twenty_four)

jamal.memberships
danny.memberships

jamal.gyms
jeff.gyms

Lifter.average_lift

jamal.total_cost
jeff.total_cost

Lifter.all

Membership.all

Gym.all

twenty_four.memberships
la_fitness.memberships
columbia_city.memberships

twenty_four.lifters
twenty_four.lifters_names

twenty_four.lift_total


puts "Gains!"
