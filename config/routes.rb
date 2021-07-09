Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :stories, only: [:index, :create] do
        resources :likes, only: [:create]
        resources :dislikes, only: [:create]
      end
    end
  end
end
