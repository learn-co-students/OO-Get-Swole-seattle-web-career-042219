class Gym
  attr_reader :name

  @@all=[]

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters
    self.memberships.map do |membership|
      membership.lifter
    end.compact
  end

  def lifters_names
    self.lifters.map do |membership|
      membership.name
    end
  end

  def combined_lift_total
    self.lifters.map do |membership|
      membership.lift_total
    end.sum
  end


end
