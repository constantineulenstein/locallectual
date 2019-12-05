Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root to: 'pages#home'
  get '/locallects/:locallect_id/friendships/:friendship_id/approve', to: 'friendships#approve', as: 'friendship_request_approve'
  get '/locallects/:locallect_id/friendships/:friendship_id/reject', to: 'friendships#reject', as: 'friendship_request_reject'
  get '/conversations/:id/reply', to: 'conversations#reply', as: 'reply'
  resources :conversations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :locallects, only: [:index, :show, :new, :create, :edit]  do
    resources :friendships, only: [:index, :show, :new, :create, :destroy] do
      resources :transactions
    end
  end
end
