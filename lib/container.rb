
class Container
  attr_accessor :ingredients

  def initialize(weight,maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def weight
    @weight
  end

  def maximum_holding_weight
      @maximum_holding_weight
  end

  def ingredients(ingredient = [])
    ingredient.each do |stuff|
      @ingredients << stuff
    end
    @ingredients
  end

  def which_ingredient
    if !@ingredients.nil?
      @ingredients[0].name
    end
  end

  def how_many_ingredients
    @ingredients.count
  end

  def remove_one_ingredient
    @ingredients.pop
  end

  def empty
    @ingredients = []
  end

  def fill_with_ingredient(ingredient)
    count = (@maximum_holding_weight.to_f/ingredient.weight).to_i
    count.times do
      @ingredients << ingredient
      @weight += ingredient.weight
    end
    @weight = @weight.round(2)
  end
end
