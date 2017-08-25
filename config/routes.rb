Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :rooms, only: [:new, :create, :show, :update] do
    resources :tracks, only: [:create]
    resources :messages, only: [:create]
  end


end
