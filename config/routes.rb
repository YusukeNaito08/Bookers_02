Rails.application.routes.draw do
  devise_for :users
  resources :users, only:[:show,:index,:edit,:update]
  root to:  "homes#top"
 get "/homes/about" => "homes/about"
  resources :books, only:[:index,:show,:create,:edit,:update,:destroy] do
    resource :favorites, only:[:create,:destroy]
  resources :book_comments, only:[:create, :destroy]
 end
end
