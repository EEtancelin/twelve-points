Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  resources :fines , except: :index do
    resources :offers, only: [:index, :new, :create, :update]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/profile' , to: 'users#show'

  post '/fines/:fine_id/offers/new' , to: 'offers#create'
end
