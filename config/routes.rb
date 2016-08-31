Rails.application.routes.draw do
  resources :requires
  root "application#index"
end
