Rails.application.routes.draw do
  resources :splash, only: [:index]
  resources :entities, only: %i[:index new create destroy] do
    resources :relations, only: [:create]
  end
  resources :groups, only: %i[index show new create destroy]
  
  devise_for :users
   root to: 'groups#index'
    get '/users/sign_out' => 'devise/sessions#destroy'
end