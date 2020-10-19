Rails.application.routes.draw do

  post '/login',    to: 'sessions#create'
  post '/photos',    to: 'photos#create'
  post '/cart_item_photos',    to: 'cart_item_photos#create'
  post '/create_photo',    to: 'photos#create_photo'
  post '/logout',   to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in'
  resources :items, only: [:create, :show, :index, :update, :destroy]
  resources :users, only: [:create, :show, :index, :update] do 
        resources :cart_items
end

end
