class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  @@fishes = []
  @@dogs = []
  @@cats = []

  def initialize(name, species="human")
    @name = name
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def buy_fish(name)
    fish = self.new(name)
  end

  def say_species
    "I am a #{@species}"
  end

end
