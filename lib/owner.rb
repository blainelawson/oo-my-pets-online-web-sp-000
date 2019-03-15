require "pry"

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
    @pets[:dogs].each do |dog|
      binding.pry
      mood = "happy"
    end
  end

end
