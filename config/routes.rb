Rails.application.routes.draw do
  resources :students
  resources :parents
  resources :teachers
  resources :schools
  resources :courses
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
