Rails.application.routes.draw do
  root "rice_balls#index"

  devise_for :users, skip: [ :unlocks ], controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  resources :rice_balls

  get "up" => "rails/health#show", as: :rails_health_check

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
