Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :locallects, only: [:index, :show, :new, :create, :edit]  do
    resources :friendships, only: [:index, :show, :new, :create, :destroy] do
      resources :transactions
    end
  end
end
