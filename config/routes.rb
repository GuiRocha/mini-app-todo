Rails.application.routes.draw do
  devise_for :users

  resources :todos do
    resources :items
  end
  root "todos#index"

end
