Rails.application.routes.draw do
  devise_for :users
  resources :books, only:[:index,:show,:create,:edit,:update,:destroy]

  resources :users, only:[:show,:index,:edit,:update]
  root to:  "homes#top"
end
