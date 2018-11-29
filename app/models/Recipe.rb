class Recipe
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    rec_ings = RecipeIngredient.all.select do |rec_ing|
      rec_ing.recipe == self
    end
    rec_ings.map do |rec_ing|
      rec_ing.ingredient
    end
  end

  def allergens
    all_ings = Allergen.all.map do |allergen|
      allergen.ingredient
    end
    all_ings.select do |ing|
      self.ingredients.include?(ing)
    end
  end

  def add_ingredients(arr)
    arr.each do |ing|
      RecipeIngredient.new(ing, self)
    end
  end

  def most_popular
    recipes = RecipeCard.all.map do |rc|
        rc.recipe
    end
    recipes.max_by { |i| recipes.count(i)}
  end
end
