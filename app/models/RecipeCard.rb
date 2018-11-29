class RecipeCard
  @@all = []
  attr_accessor :date, :user, :recipe, :rating

  def initialize(date, user, recipe, rating)
    @date = date
    @user = user
    @recipe = recipe
    @rating = rating
    @@all << self
  end
  def self.all
    @@all
  end
end
