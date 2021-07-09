Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/stories', to: 'stories#index'
      post '/stories', to: 'stories#create'
    end
  end
end
