Rails.application.routes.draw do
  resources :users
  get 'blog/index'
  get 'blog/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
