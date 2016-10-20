Rails.application.routes.draw do
    resources :fines , only: [:new, :create, :show,
                              :edit, :update, :destroy] do
      resources :offers, only: [:index,:new, :create, :update]
  end


  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/profile' , to: 'users#show'

  post '/fines/:fine_id/offers/new' , to: 'offers#create'
end
