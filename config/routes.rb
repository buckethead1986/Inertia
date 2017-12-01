Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :new, :create, :show, :update]
      resources :challenges, only: [:index, :new, :create, :show, :update]
      resources :user_challenges, only: [:index, :new, :create, :show, :update]
    end
  end
end
