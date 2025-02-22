Rails.application.routes.draw do

  #shorthand for setting up index, show, new, and create
  resources :places
  resources :entries

  #sets the homepage to the index action of the Places controller, aka the list of places (didn't specifically cover in class but good practice)
  root "places#index"
  

end
