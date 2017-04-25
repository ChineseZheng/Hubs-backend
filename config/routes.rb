Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  namespace :api do
    namespace :v1 do
      resources :pendings
      resources :progresses 
      #resources :admins
      resources :courses
      resources :categories
      resources :users,only: [:index, :create, :show, :update, :destroy]
      resources :user_types
      resources :user_to_courses
      resources :user_to_users
      resources :user_to_progresses
      resources :user_to_categories
    end
  end
 root 'application#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
