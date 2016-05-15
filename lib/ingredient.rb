class Ingredient
  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def name
    @name
  end

  def weight
    @weight
  end

  def self.create_from_grams(name,weight)
    new_weight = weight.to_f/1000
    Ingredient.new(name,new_weight)
  end
end
