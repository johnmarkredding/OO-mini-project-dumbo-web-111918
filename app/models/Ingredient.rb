class Ingredient
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    allergens = Allergen.all.map do |allergen|
      allergen.ingredient
    end
    allergens.max_by { |i| allergens.count(i)}
  end
end
