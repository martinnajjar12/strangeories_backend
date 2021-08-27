Rails.application.routes.draw do
  mount_devise_token_auth_for 'Author', at: 'auth'

  namespace :api do
    namespace :v1 do
      resources :stories, only: %i[index create] do
        resources :likes, only: [:create]
        resources :dislikes, only: [:create]
      end
    end
  end
end
