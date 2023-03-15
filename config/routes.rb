Rails.application.routes.draw do
  get 'relations/new'
  get 'groups/index'
  get 'groups/show'
  get 'groups/new'
  get 'entities/index'
  get 'entities/show'
  get 'entities/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
