class RecipeCard
    attr_reader :recipe, :user, :rating, :date
    @@all =[]
    def initialize(recipe,user,rating)
        @recipe=recipe
        @user=user
        @rating=rating
        @date = Time.now
        @@all << self
    end 

    def self.all
        @@all
    end
end
