Rails.application.routes.draw do
  resources :posts


  get 'post/new' => 'posts#new'
  root to: 'posts#index'
end
