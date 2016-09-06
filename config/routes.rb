Rails.application.routes.draw do
  resources :posts
  root "application#index"
    get 'new_post' => 'posts#new'
    get 'home_path' => 'application#index'
    get 'all_posts' => 'posts#show'
    get 'show_pdd' => 'pdd#pdf'
end
