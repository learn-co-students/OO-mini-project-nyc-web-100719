class Ingredient
    attr_reader :name
    @@all=[]
    def initialize(name)
        @name=name
        @@all << self
    end
    def allergens
        Allergy.all.select do |allergen|
            allergen.ingredient == self
        end
    end
    def users
        allergens.map do |allergen|
            allergen.user
        end
    end
    def self.most_common_allergen
        all.max{|all1,all2| all1.users.count <=> all2.users.count}
    end
    def self.all
        @@all
    end
end

