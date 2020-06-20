Rails.application.routes.draw do
  devise_for :users

  resources :todos do
    resources :items
    member do
      patch :done
    end
  end
  root "todos#index"

end
