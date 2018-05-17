Rails.application.routes.draw do

  get 'pages/home'

 get 'session/new'

 root :to =>'pages#home'

 get '/login' => 'session#new'
 post '/login' =>'session#create'
 delete '/login' => 'session#destroy'
 # get '/mealplans/:date' => 'mealplans#showbydate', as: :mealplanshowbydate

# get '/mealplans/:date', to: 'mealplans#showbydate', as: :mealplanshowbydate

  resources :usercategories
  resources :servingguides

  get '/mealplans/date/:date' => 'mealplans#showbydate', as: :mealplanshowbydate
  resources :mealplans do
    #this route is given to create a link to the showbydate page which will be
    #the url of the event on the calendar.
  end

  resources :families
  resources :users


  # get '/mealplans/:date' => 'mealplans#showbydate', as: :mealplanshowbydate

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
