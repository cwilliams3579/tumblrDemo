Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
  get 'post/new' => 'posts#new'
  get '/posts/:id/edit' => 'posts#edit'
  root to: 'posts#index'
end
