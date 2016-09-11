Rails.application.routes.draw do
  resources :posts
  root 'application#index'
  get '/post_path' => 'posts#index'
  get '/new_post_path' => 'posts#new'
  get '/post_path' => 'posts#show'
  get '/edit_post_path' => 'posts#edit'
  put '/posts/:id/edit' => 'posts#update'
  get '/show_pdd_path' => 'pdd#pdf'
  get '/home_path' => 'application#index'
  get 'contact_path' => 'application#contact'

  devise_for :users
  devise_scope :user do
    get 'new_user_session' => 'devise/sessions#new'
    get 'destroy_user_session' => 'devise/sessions#destroy'
  end

end
