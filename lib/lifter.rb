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

  def lifter_memberships
    Membership.all.select do |mem|
      mem.lifter == self
    end
    # - Get a list of all the memberships that a specific lifter has
  end

  def lifter_gyms
    lifter_memberships.collect do |mem|
      mem.gym
    end
    # - Get a list of all the gyms that a specific lifter has memberships to
  end

  def avg_lift
    ary = @@all.collect do |lift|
      lift.lift_total
    end
    ary.sum/ary.count.to_f
    #- Get the average lift total of all lifters
  end

  def cost
    lifter_memberships.collect do |mem|
      mem.cost
    end.sum
    # - Get the total cost of a specific lifter's gym memberships
  end

  def sign_up(cost, gym)
    m4 = Membership.new(cost, self, gym)
    # - Given a gym and a membership cost, sign a specific lifter up for a new gym
  end
end
