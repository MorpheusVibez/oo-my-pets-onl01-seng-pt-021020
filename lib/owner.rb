class Owner

  attr_reader :name, :species
  @@all = []
  # @@count = 0

  def initialize(name)
    @name = name
    @species = "human"
    # save
    @@all << self
    # @@count += 1
  end

  # def save
  #   @@all << self
  # end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    # @@count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.each_object(self)
  end
end
