class User
    attr_reader :name
    @@all=[]
    def initialize(name)
        @name=name
        @@all << self
    end
    def add_recipe_card(recipe,rating)
        RecipeCard.new(recipe,self,rating)
    end
    def recipe_cards
        RecipeCard.all.select do |card|
            card.user == self
        end
    end
    def top_three_recipes
        sorted=recipe_cards.sort{|card1,card2| card2.rating<=>card1.rating}
        top_recs=sorted[0..2].map do |card|
            card.recipe
        end
        top_recs.each do |rec|
            rec
        end
    end
    def most_recent_recipe
        recipe_cards.last.recipe
    end
    def recipes
        recipe_cards.map do |card|
            card.recipe
        end    
    end
    def declare_allergy(ingredient)
        Allergy.new(self,ingredient)
    end
    def allergens
        my_allergies=Allergy.all.select do |allergen|
            allergen.user==self
        end
        my_allergies.map do |allergen|
            allergen.ingredient
        end

    end
    def self.all
        @@all
    end
end
