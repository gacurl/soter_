Rails.application.routes.draw do
  get "activites", to: "activities#index"

  root to: "activities#index"
  # get 'activities/index'
  # get 'activities/new'
  # get 'activities/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
