Rails.application.routes.draw do
  root to: 'static_pages#root'

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :destroy]

  namespace :api, defaults: { format: :json } do
    resources :subscriptions, only: [:create, :destroy]
    resources :subreddits
    resources :posts, except: [:new] do
      member do
        post "like",    to: "posts#upvote"
        post "dislike", to: "posts#downvote"

      end

    end

  end


end
