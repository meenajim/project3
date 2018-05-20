Rails.application.routes.draw do

  get 'guidelines/index'

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
  #*********************this code is not used**********************
  #this route is given to create a link to the showbydate page which will be
  #the url of the event on the calendar.
  get '/mealplans/date/:date' => 'mealplans#showbydate', as: :mealplanshowbydate
  #*****************************************************************

  get '/nutritioncalculator' =>'servingguides#nutrition'

  get '/users/:id/activate' => 'users#activate', as: :useractivate

  resources :mealplans do
    collection do
      put :update_all
    end
  end

  resources :families
  resources :users


  # get '/mealplans/:date' => 'mealplans#showbydate', as: :mealplanshowbydate

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
