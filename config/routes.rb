Rails.application.routes.draw do
  ressources :offers, only: [:index,:new, :create, :update] do
    ressources : :fines , only: [:index, :new, :create, :show, :edit, :update, :destroy]
  end


  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
