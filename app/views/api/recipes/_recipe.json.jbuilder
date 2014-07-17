json.id recipe.id
json.(recipe, :name, :directions, :photo)
json.creator recipe.user.name
json.link api_recipe_url(recipe) unless recipe.new_record?
