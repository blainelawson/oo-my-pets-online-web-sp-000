require "pry"

class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []


  def initialize(name, species="human")
    @name = name
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}

    @@all << self
  end

  def self.all
    @@all
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def say_species
    "I am a #{@species}."
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    # binding.pry
    self.pets.each do |pets|
      pets.each do |pet|
        pet = []
        binding.pry
      end
    end

  end
end
