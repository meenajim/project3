# json.array! @mealplans, partial: 'mealplans/mealplan', as: :mealplan

json.array! @mealplan_user  do |mealplan|
  json.id mealplan.id
  json.title mealplan.mealtype
  json.start mealplan.date
  # json.url "http://localhost:3000/mealplans/"

  # & mealplan.date


end
