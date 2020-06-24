Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only:[:index,:show,:create,:new] do 
    resources :reviews, only:[:create, :new]
  end
  # get '/restaurants', to: 'restaurants#index'
  # get '/restaurant/:id', to: 'restaurant#show'
  # get '/restaurant/new', to: 'restaurant#new'
  # post '/restaurants', to: 'restaurant#create'
  # get '/restaurant/:id/edit', to: 'restaurant#edit'
  # patch '/restaurants/:id', to: 'restaurants#update'
  # delete '/restaurants/:id', to: 'restaurant#destroy'
end
