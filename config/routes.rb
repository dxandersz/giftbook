Rails.application.routes.draw do
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
  root 'pages#home'
  get '/*path' => 'page#index'
end
