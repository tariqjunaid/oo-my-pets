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


# class Cat
#   attr_accessor :owner, :all_cats, :new_mood, :mood
#   attr_reader :name
#
#   @@all_cats = []
#
#   def initialize(name, owner)
#     @name = name
#     @owner = owner
#     @@all_cats << name
#     @mood = "nervous"
#   end
#
#   def self.all
#     #binding.pry
#     @@all_cats
#   end
#
#   def self.mood(new_mood)
#     new_mood = @mood
#     @mood
#   end
#
# end
