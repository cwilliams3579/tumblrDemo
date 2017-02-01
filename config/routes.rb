Rails.application.routes.draw do
  resources :posts
  get 'post/new' => 'posts#new'
  get '/posts/:id/edit' => 'posts#edit'
  root to: 'posts#index'
end
