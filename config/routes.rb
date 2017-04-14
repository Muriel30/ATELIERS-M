Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories, only: [:index, :show]
  resources :pois, only: [:index, :show, :new, :create] do
  resources :reviews, only: [:create, :destroy]

  end
  mount Attachinary::Engine => "/attachinary"
  end

# '/pois'
# GET 'pois#index'

# '/pois/new'
# GET 'pois#new'
# POST 'pois#create'

# '/pois/:id'
# GET 'pois#show'

# '/pois/:id/reviews/new'
# GET 'reviews#new'
# POST 'reviews#create'

# '/pois/:id/reviews/1'
# GET 'reviews#show'

# '/pois/:id/reviews'
# GET 'reviews#index'
