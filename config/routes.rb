Rails.application.routes.draw do
  resources :dogs
  resources :employees
  get "dogs/index/sorted", to: "dogs#sorted", as: "sort"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
