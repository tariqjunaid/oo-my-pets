require 'pry'

class Dog
  attr_accessor :owner, :mood, :new_mood, :all_dogs
  attr_reader :name

  @@all_dogs = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @@all_dogs << self
    @mood = "nervous"
  end

  def self.all
    @@all_dogs
  end

  def self.mood(new_mood)
    new_mood = @mood
    @mood
  end
end
