Rails.application.routes.draw do
  resources :contacts
  root 'users#new'

  resources :sessions,only: [:new , :create, :destroy]
  get "/sessions/:id", to: "sessions#destroy"
  post "/sessions/new", to: "users#index"

  post "/posts/create", to: "posts#confirm"

  resources :users do
    member do
      get :favourite
    end
  end

  resources :posts ,only: [:new ,:show , :update , :confirm, :edit, :index, :create, :destroy] do
  get "/post/:id", to: "post#destroy"
    collection do
      post :confirm
    end
    resources :likes, module: :posts
    resources :bookmarks, module: :posts
    resources :comments, only: [:create, :destroy] do
      resources :likes, module: :comments
      end
    end
resources :favorites, only: [:create, :destroy]
# get "/favorites/:id", to: "favorite#destroy"

mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
