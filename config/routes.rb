Rails.application.routes.draw do
  root 'page#home'
  namespace :api do
    namespace :v1 do
      get 'giftboxes/index'
      post 'giftboxes/create'
      get '/show/:id', to: 'recipes#show'
      delete '/destroy/:id', to: 'giftboxes#destroy'
    end
  end
end
