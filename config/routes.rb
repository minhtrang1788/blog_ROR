Rails.application.routes.draw do
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'
  #get 'session/new'
  resources :users
  get 'blog/index'
  get 'blog/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
