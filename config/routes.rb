Rails.application.routes.draw do
  root to: 'static_pages#root'

  namespace :api, defaults: { format: :json } do
    resources :subreddits

    resources :comments do
        member do
          post "like",   to: "comments#upvote"
          post "dislike", to: "comments#downvote"
        end
      end

      resources :posts do
        member do
          post "like",    to: "posts#upvote"
          post "dislike", to: "posts#downvote"
        end
      end

  end

  #2 backbone models up/down, one points posts#upvote url, on the click handler

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :destroy]

end
