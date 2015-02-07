Rails.application.routes.draw do
  root to: 'static_pages#root'

  namespace :api, defaults: { format: :json } do
    resources :subreddits
    resources :posts
    resources :comments
  end

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :destroy]

end
