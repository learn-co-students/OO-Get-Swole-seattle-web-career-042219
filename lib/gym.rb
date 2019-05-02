class Gym

  @@all = []
  attr_reader :name, :cost

  def initialize(name:, cost:)
    @name = name
    @cost = cost
    @@all << self
  end

  def memberships
    Membership.all.select do |membership|
      if membership.gym.name == self.name
        membership
      end
    end
  end

  def lifters
    self.memberships.map do |membership|
      membership.lifter
    end
  end

  def lifters_names
    self.lifters.map do |membership|
      membership.name
    end
  end

  def lift_total
    arr = []
    self.memberships.map do |membership|
      arr << membership.lifter.lift_total
    end
    arr.sum
  end

  def self.all
    @@all
  end

end
