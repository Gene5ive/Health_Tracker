Rails.application.routes.draw do
  get '/' => 'users#index'

  get "/log-in" => "sessions#new"
  post "/log-in" => "sessions#create"
  get "/log-out" => "sessions#destroy", as: :log_out

  get "/errors" => "foods#errors"

  resources :users do
    resources :foods
  end

  resources :users do
    resources :exercises
  end
end
