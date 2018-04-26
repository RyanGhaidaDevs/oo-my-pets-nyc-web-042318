
require 'pry'
class Owner


  @@all = []

  attr_accessor :owner, :pets, :name
  attr_reader  :species

  def initialize(owner, species="human")
    @pets = {fishes: [], cats: [], dogs: []}
    @owner = owner
    @species = species
    @@all << self
# binding.pry
  end

  #CLASS OPERATORS
  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def self.all
    @@all
  end
#===================

  # def name=(name)
  #   @name = name
  # end

  def say_species
    return "I am a #{@species}."
  end


  def buy_fish(fish_name)
    name = Fish.new(fish_name)
    @pets[:fishes] << name
    @pets[:fishes].count
  end

  def buy_cat(cat_name)
    name = Cat.new(cat_name)
    @pets[:cats] << name
    @pets[:cats].count
  end

  def buy_dog(dog_name)
    name = Dog.new(dog_name)
    @pets[:dogs] << name
    @pets[:dogs].count
  end

  def play_with_cats
    @pets[:cats].collect do |x|
    x.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].collect do |x|
    x.mood = "happy"

    end
  end

  def walk_dogs
    @pets[:dogs].collect do |x|
    x.mood = "happy"

    end
  end

  def sell_pets

    @pets.each do |type,pets_hash|
      pets_hash.map do |x|

        x.mood = "nervous"

      end
    end

    @pets.clear

  end

  def list_pets
     x = @pets[:fishes].length
     y = @pets[:dogs].length
     z = @pets[:cats].length

    "I have #{x} fish, #{y} dog(s), and #{z} cat(s)."
  end

end
