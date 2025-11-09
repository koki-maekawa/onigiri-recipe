Rails.application.routes.draw do
  root "rice_balls#index"

  devise_for :users, skip: [ :unlocks ], controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  resources :users, only: [ :show ] do
    member do
      get "created_index"
      get "bookmarked_index"
    end
  end

  resources :rice_balls do
    resource :bookmarks, only: [ :create, :destroy ]
  end

  get "up" => "rails/health#show", as: :rails_health_check

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
