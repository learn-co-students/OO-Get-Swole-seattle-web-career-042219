class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
    self.memberships.map do |membership|
      membership.gym
    end
  end

  def self.average_lift_total
    total = self.all.sum do |lifter|
      lifter.lift_total
    end
    total.to_f / self.all.length
  end

  def cost_of_memberships
    self.memberships.sum do |membership|
      membership.cost
    end
  end

  def sign_up(gym, cost)
    Membership.new(cost, self, gym)
  end 



end


#lifter has many memberships
#lifter has many gyms
#gyms have many memberships
#membership belongs to lifter and gym
