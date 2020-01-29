Rails.application.routes.draw do
  #get 'comments/create'
  #get 'comments/destroy'
  devise_for :users, controllers: {registrations: 'users/registrations'}
  get '/:locale/locallects/:locallect_id/friendships/:friendship_id/approve', to: 'friendships#approve', as: 'friendship_request_approve'
  get '/:locale/locallects/:locallect_id/friendships/:friendship_id/reject', to: 'friendships#reject', as: 'friendship_request_reject'
  get '/:locale/conversations/:conversation_id/transactions/:transaction_id/approve', to: 'transactions#approve', as: 'transaction_request_approve'
  get '/:locale/conversations/:conversation_id/transactions/:transaction_id/reject', to: 'transactions#reject', as: 'transaction_request_reject'
  get '/:locale/conversations/:id/reply', to: 'conversations#reply', as: 'reply'

  scope "(:locale)", locale: /en|de|fr/ do
    root to: 'pages#home'
    resources :conversations do
      resources :transactions
    end
    # get '/locallects/filtered/', to: 'locallects#filter', as: 'locallects_filtered'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :locallects, only: [:index, :show, :new, :create, :edit]  do
      resources :friendships, only: [:index, :create, :destroy]
    end
    resources :forums do
      resources :comments, only: [:create, :destroy]
    end
  end

  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end

end
