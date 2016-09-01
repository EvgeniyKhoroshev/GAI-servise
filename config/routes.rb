Rails.application.routes.draw do
  resources :posts
  root "application#index"
  get 'new_post' => 'posts#new'
  get 'home_path' => root
  get 'all_posts' => 'posts#show'
end
