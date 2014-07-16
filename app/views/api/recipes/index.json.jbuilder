json.recipes @recipes.each do |recipe|
  json.name recipe.name
  json.photo recipe.photo.url
  json.directions recipe.directions
  json.submitted_by recipe.user.name
end
