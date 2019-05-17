require 'pry'

  class Owner

    attr_reader :species, :name

    @@all =[]

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
      @@all.clear
    end

    def say_species
      "I am a #{self.species}."
    end

    def cats
      Cat.all.select { |cat| cat.owner == self }
    end

    def buy_cat(name)
      Cat.new(name, self)
    end

    def dogs
      Dog.all.select { |dog| dog.owner == self }
    end

    def buy_dog(name)
      Dog.new(name, self)
    end

    def walk_dogs
      self.dogs.collect { |dog| dog.mood = "happy" }
    end

    def feed_cats
      self.cats.collect { |cat| cat.mood = "happy" }
    end

    def sell_pets
      all_pets = self.cats + self.dogs
      all_pets.collect do |pet|
        pet.mood = "nervous"
        pet.owner = nil
      end
    end

    def list_pets
      "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
    end

  end
