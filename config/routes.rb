Rails.application.routes.draw do
  root 'welcome#home'
  resources :users

  #get '/welcome/home', to: 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #creating two routes: 1. root route, /welcome/home routes both are hitting the same controller and same action.

end
