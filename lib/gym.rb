class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |mem|
      mem.gym == self
    end
    #Get a list of all memberships at a specific gym
  end

  def lifters
    memberships.collect do |mem|
      mem.lifter
    end
    #Get a list of all the lifters that have a membership to a specific gym
  end

  def names
    lifters.collect do |lift|
      lift.name
    end
    #Get a list of the names of all lifters that have a membership to that gym
  end

 def total_lift_total_for_this_gym
   memberships.collect do |mem|
     mem.lifter.lift_total
  end.sum
   #Get the combined lift total of every lifter has a membership to that gym
 end

end
