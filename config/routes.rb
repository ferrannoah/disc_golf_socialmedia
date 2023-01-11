Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: redirect('home')

  get 'home', to: 'pages#index', as: 'home'

  get 'users', to: 'users#index', as: 'users'
  post 'users', to: 'users#create'
  get 'users/:id/settings', to: 'users#edit', as: 'settings'
  get 'users/:id', to: 'users#show', as: 'user'
  patch 'users/:id', to: 'users#update'

  get 'courses/:id', to: 'courses#show', as: 'course'
  

  get 'users/:user_id/posts/new', to: 'posts#new', as:  'new_post'
  post 'users/:user_id/posts', to: 'posts#create'
  get 'users/:user_id/posts', to: 'posts#index', as: 'posts' 
  get 'users/:user_id/posts/:id', to: 'posts#show', as: 'post'

  get 'users/:user_id/posts/:post_id/comments/new', to: 'comments#new', as:  'new_comment'
  post 'users/:user_id/posts/:post_id/comments', to: 'comments#create'
  get 'users/:user_id/posts/:post_id/comments', to: 'comments#index', as: 'comments'
  

end
