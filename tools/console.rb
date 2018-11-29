require_relative '../config/environment.rb'

pat = User.new("pat")
taimur = User.new("taimur")
sam = User.new("sam")
johnmark = User.new("johnmark")

burger = Recipe.new("burger")
shawarma = Recipe.new("shawarma")
arepas = Recipe.new("arepas")
salad = Recipe.new("salad")

lamb = Ingredient.new("lamb")
shrimp = Ingredient.new("shrimp")
soy = Ingredient.new("soy")
bread = Ingredient.new("bread")
gluten = Ingredient.new("gluten")
beef = Ingredient.new("beef")

recipecard1 = RecipeCard.new("2012-02-10", taimur, shawarma, 10)
recipecard2 = RecipeCard.new("3012-08-30", pat, shawarma, 2)
recipecard3 = RecipeCard.new("1222-09-24", pat, burger, 4)
recipecard4 = RecipeCard.new("2000-04-17", sam, shawarma, 3)
recipecard5 = RecipeCard.new("1996-11-26", johnmark, burger, 7)
recipecard6 = RecipeCard.new("3012-08-30", pat, arepas, 2)
recipecard7 = RecipeCard.new("3012-08-30", pat, salad, 10)

ring1 = RecipeIngredient.new(lamb, shawarma)
ring2 = RecipeIngredient.new(bread, shawarma)
ring3 = RecipeIngredient.new(shrimp, shawarma)
ring4 = RecipeIngredient.new(gluten, shawarma)
ring5 = RecipeIngredient.new(beef, burger)
ring6 = RecipeIngredient.new(bread, burger)
ring7 = RecipeIngredient.new(shrimp, burger)
ring8 = RecipeIngredient.new(gluten, burger)
ring9 = RecipeIngredient.new(beef, arepas)
ring10 = RecipeIngredient.new(shrimp, salad)

all1 = Allergen.new(pat, beef)
all1 = Allergen.new(johnmark, soy)
all2 = Allergen.new(taimur, soy)
all3 = Allergen.new(taimur, gluten)

binding.pry
