class Lifter
  attr_reader :name, :lift_total

  @@all=[]
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
    Membership.all.map do |membership|
      if membership.lifter == self
        membership.gym
      end
    end.compact
  end

  def self.average_lift_total
    self.all.map do |lifter|
      lifter.lift_total
    end.sum.to_f/Lifter.all.size
  end

  def total_cost_of_memberships
    self.memberships.map do |membership|
      membership.cost
    end.sum
  end

  def sign_up_a_new_lifter(gym, cost)
    Membership.new(cost, gym, self)
  end


end
