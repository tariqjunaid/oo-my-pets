require 'pry'

class Cat
  attr_accessor :new_mood, :mood, :all_cats, :owner
  attr_reader :name

  @@all_cats = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @@all_cats << self
    @mood = "nervous"
  end

  def self.all
    #binding.pry
    @@all_cats
  end

  def self.mood(new_mood)
    new_mood = @mood
    @mood
  end

end
