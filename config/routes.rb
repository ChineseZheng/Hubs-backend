Rails.application.routes.draw do
  
  namespace :api do
    namespace :vi do
      resources :courses
    end
  end
  namespace :api do
    namespace :v1 do
      resources :categories
    end
  end
  namespace :api do
    namespace :v1 do
      resources :parents
    end
  end
  namespace :api do
    namespace :v1 do
      resources :teachers
    end
  end
  namespace :api do
    namespace :v1 do
      resources :schools
    end
  end
  namespace :api do
    namespace :v1 do
      resources :students
    end
  end
  namespace :api do
    namespace :v1 do
      resources :tests
    end
  end
  root 'application#index'

  namespace :api do
  	namespace :v1 do
      	  	  	  	  	  	end 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
