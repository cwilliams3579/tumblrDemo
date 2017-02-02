Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end
  get 'post/new' => 'posts#new'
  get '/posts/:id/edit' => 'posts#edit'
  root to: 'posts#index'
end
