Rails.application.routes.draw do
  root 'static_pages#home'

  get 'activities/index'
  get 'activities/new'
  get 'activities/edit'

  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'

  
end
