Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'giftboxes/index'
      post 'giftboxes/create'
      get '/show/:id', to: 'giftboxes#show'
      delete '/destroy/:id', to: 'giftboxes#destroy'
    end
  end
  root 'page#home'
  get '/*path' => 'page#home'
end