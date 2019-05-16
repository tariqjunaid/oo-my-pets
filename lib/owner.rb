require 'pry'

require_relative '../lib/cat.rb'
require_relative '../lib/dog.rb'

class Owner
  attr_accessor :mood, :all
  attr_reader :species, :say_species, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def self.species
    @species
  end

  def say_species
    "I am a human."
  end

  def name
    @name
  end

  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    Dog.all.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    Cat.all.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    all_pets = self.cats + self.dogs
      all_pets.collect do |pet|
        pet.owner = nil
        pet.mood = "nervous"
      end
  end

  def list_pets
    all_pets = self.cats + self.dogs
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  #binding.pry
  end
end
