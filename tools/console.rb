require_relative '../config/environment.rb'

u1 = User.new("Matt")
u2 = User.new("Peter")

r1= Recipe.new("Chicken Parm")
r2= Recipe.new("Pizza")
r3= Recipe.new("Pasta")
r4= Recipe.new("Chicken")
r5= Recipe.new("Burger")
r6= Recipe.new("Salad")

rc1= RecipeCard.new(r1,u1,4)
rc2= RecipeCard.new(r2,u1,10)
rc3= RecipeCard.new(r3,u2,8)
rc4= RecipeCard.new(r1,u2,5)
rc5= RecipeCard.new(r4,u1,3)
rc6= RecipeCard.new(r5,u1,7)
rc7= RecipeCard.new(r6,u2,1)

i1= Ingredient.new("Deez Nuts")
i2= Ingredient.new("Cheese")
i3= Ingredient.new("Gluten")

a1= Allergy.new(u1,i1)
a2= Allergy.new(u2,i1)
a3= Allergy.new(u2,i2)
a4= Allergy.new(u2,i3)

ri1=RecipeIngredient.new(r1,i1)
ri2= RecipeIngredient.new(r1,i2)
ri3= RecipeIngredient.new(r2,i3)
ri4= RecipeIngredient.new(r2,i2)


binding.pry
