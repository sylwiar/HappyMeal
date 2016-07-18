Rails.application.routes.draw do

  resources :orders do
    resources :meals
  end

  root "application#index"

  get "/auth/:provider/callback" => "sessions#create"
  get "/logout" => "sessions#destroy"

end
