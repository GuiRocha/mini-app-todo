Rails.application.routes.draw do
  
  get 'items/new'
  get 'todo/index'
  devise_for :users
  root "todo#index"
end
