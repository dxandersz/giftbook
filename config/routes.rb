Rails.application.routes.draw do
  root 'page#home'
  namespace :api do
    namespace :v1 do
      get 'giftboxes/index'
      post 'giftboxes/create'
      get 'giftboxes/show/:id', to: 'giftboxes#show'
      delete '/destroy/:id', to: 'giftboxes#destroy'
      get 'users/index'
      get 'users/show/:id', to: 'users#show'
    end
  end
end
