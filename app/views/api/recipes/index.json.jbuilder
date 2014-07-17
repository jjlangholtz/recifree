json.page @recipes.current_page
json.pages @recipes.total_pages
unless @recipes.first_page?
  json.prev api_recipes_url(page: @recipes.prev_page, format: 'json')
end
unless @recipes.last_page?
  json.next api_recipes_url(page: @recipes.next_page, format: 'json')
end

json.recipes @recipes do |recipe|
  json.partial! "recipe", recipe: recipe
end
