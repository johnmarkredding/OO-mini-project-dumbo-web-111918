class User
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def recipes
    rcs = self.recipe_cards
    rcs.map {|rc| rc.recipe}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(date, self, recipe, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    alls = Allergen.all.select do |allergen|
      allergen.user == self
    end
    alls.map do |allergen|
      allergen.ingredient
    end
  end

  def top_three_recipes
    sorted = self.recipe_cards.sort_by do |rc|
      rc.rating
    end
    sorted[-3..-1].map do |rc|
      rc.recipe
    end
  end

  def date_to_integer(date)
    date.split('-').join.to_i
  end

  def most_recent_recipe
    result = self.recipe_cards.sort_by do |rc|
      date_to_integer(rc.date)
    end.last
    result.recipe
  end

  def safe_recipes
    Recipe.all.select do |recipe|
      (recipe.allergens & self.allergens).empty?
    end
  end
  def recipe_cards
    rcs = RecipeCard.all.select do |rc|
      rc.user == self
    end
  end
end
