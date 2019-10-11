class Allergy
    attr_reader :user, :ingredient, :name
    @@all=[]
    def initialize(user,ingredient)
        @user=user
        @ingredient=ingredient
        @name= "#{@ingredient.name} Allergy"
        @@all << self
    end

    def self.all
        @@all
    end

end
