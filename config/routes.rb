Rails.application.routes.draw do
  resources :posts, :users
  devise_for :users
  root "application#index"
    get 'new_post' => 'posts#new'
    get 'home_path' => 'application#index'
    get 'all_posts' => 'posts#show'
    get 'show_pdd' => 'pdd#pdf'
  devise_scope :user do
    get 'new_user_session' => 'devise/sessions#new'
    get 'destroy_user_session' => 'devise/sessions#destroy'
  end
end
