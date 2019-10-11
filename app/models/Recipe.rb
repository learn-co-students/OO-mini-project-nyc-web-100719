class Recipe
    attr_reader :name
    @@all=[]
    def initialize(name)
        @name=name
        @@all << self
    end
    def recipe_cards
        RecipeCard.all.select do |card|
            card.recipe == self
        end
    end
    def users
        recipe_cards.map do |card|
            card.user
        end
    end
    def ingredients
        ring=RecipeIngredient.all.select do |ri|
            ri.recipe==self
        end
        ring.map do |ri|
            ri.ingredient
        end
    end
    def allergens
        allergies= ingredients.map do |ing|
            ing.allergens
        end
        all_ing=allergies.flatten.map do |allerg|
            allerg.ingredient
        end
        all_ing.uniq
    end
    def add_ingredients(ingredients)
        ingredients.each do |ingredient|
            RecipeIngredient.new(self,ingredient)
        end
    end
    def self.most_popular
        all.max{|rec1,rec2| rec1.users.count <=> rec2.users.count}
    end
    def self.all
        @@all
    end
end
