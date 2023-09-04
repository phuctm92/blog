Rails.application.routes.draw do
  root "homes#index"

  resources :articles do
    resources :comments
  end
end
