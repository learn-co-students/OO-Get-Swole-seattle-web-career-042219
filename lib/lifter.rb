class Lifter

  @@all = []

  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def memberships
    Membership.all.select do |membership|
      if membership.lifter.name == self.name
        membership
      end
    end
  end

  def gyms
    self.memberships.map do |membership|
      membership.gym.name
    end
  end

  def self.average_lift
    arr = []
    self.all.each do |lifter|
      arr << lifter.lift_total
    end
    '%.2f' % (arr.sum.to_f / arr.size.to_f)
  end

  def total_cost
    arr = []
    self.memberships.map do |membership|
      arr << membership.cost
    end
    arr.sum
  end

  def new_member(gym)
    Membership.new(lifter: self, gym: gym, cost: gym.cost)
  end

  def self.all
    @@all
  end

end
