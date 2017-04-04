class Ingredient

  attr_reader :name

  def self.names
    Episode::EPISODE_NUMBERS.map do |number|
      Episode.new(number).recipe.ingredients
    end.flatten.uniq
  end

  def initialize(name)
    @name = name #yes, we have NO bananas.
  end

end
