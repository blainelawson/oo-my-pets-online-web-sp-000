class Owner
  attr_accessor :pets, :name
  @@all = []
  @@fishes = []
  @@dogs = []
  @@cats = []

  def initialize(name, pet)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << @pets
  end

  def self.all
    @@all
  end

  def buy_fish(name)
    fish = self.new(name)
  end
  
end
