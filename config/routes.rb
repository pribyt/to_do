Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :projects, only: [:index, :create, :update, :destroy]
      resources :tasks, only: [:index, :create, :update, :destroy]
    end
  end
end
