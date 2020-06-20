Rails.application.routes.draw do
  
  get 'todo/index'
  devise_for :users
  root "todo#index"
end
