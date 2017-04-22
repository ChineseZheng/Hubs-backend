Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  namespace :api do
    namespace :v1 do
      resources :courses
      resources :categories
      resources :parents
      resources :teachers
      resources :schools
      resources :students
      resources :tests
    end
  end
 root 'application#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
