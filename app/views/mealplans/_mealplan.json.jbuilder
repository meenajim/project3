json.extract! mealplan, :id, :user_id, :date, :mealtype, :veg, :fruit, :grain, :meat, :milk, :additional_serve, :created_at, :updated_at
json.url mealplan_url(mealplan, format: :json)
