class RecipeFacade
  def self.find_by_country(country)
    recipes = RecipeService.find_by_country(country)[:hits]
    recipes.map do |recipes|
      Recipe.new(recipe[:recipe])
    end
  end
end