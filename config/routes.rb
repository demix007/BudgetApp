Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    authenticated do
      root to: 'groups#index'
    end

    unauthenticated do
      root to: 'splash#index', as: 'unauthenticated_root'
    end
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :splash, only: [:index]
  resources :entities, only: %i[new create destroy] do
    resources :relations, only: [:create]
  end
  resources :groups, only: %i[index show new create destroy]
end