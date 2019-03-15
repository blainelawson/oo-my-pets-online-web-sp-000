class Owner
  attr_accessor :pets
  @@all = []
  @@fishes = []
  @@dogs = []
  @@cats = []

  def initialize(pet)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << @pets
  end

  def self.all
    @@all
  end

  def buy_fish
  end
end
