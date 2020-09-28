Rails.application.routes.draw do
<<<<<<< HEAD
=======
  root 'page#home'
>>>>>>> master
  namespace :api do
    namespace :v1 do
      get 'giftboxes/index'
      post 'giftboxes/create'
<<<<<<< HEAD
      get '/show/:id', to: 'giftboxes#show'
      delete '/destroy/:id', to: 'giftboxes#destroy'
    end
  end
  root 'page#home'
  get '/*path' => 'page#home'
end
=======
      get 'giftboxes/show/:id', to: 'giftboxes#show'
      delete '/destroy/:id', to: 'giftboxes#destroy'
      get 'users/index'
      get 'users/show/:id', to: 'users#show'
    end
  end
end
>>>>>>> master
