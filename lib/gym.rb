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
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters
    self.memberships.map do |membership|
      membership.lifter
    end
  end

  def lifter_names
    self.lifters.map do |lifter|
      lifter.name
    end
  end

  def combined_lift_total
    self.lifters.sum do |lifter|
      lifter.lift_total
    end
  end

end
