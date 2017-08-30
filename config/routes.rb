Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"
  mount ActionCable.server => "/cable"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :rooms, only: [:new, :create, :show, :update, :index] do
    resources :tracks, only: [:create]
    resources :messages, only: [:create]
  end

  get "*username/*room_slug", to: "rooms#show"
end
