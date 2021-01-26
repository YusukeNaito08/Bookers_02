Rails.application.routes.draw do
  devise_for :users
  resources :users, only:[:show,:index,:edit,:update]
  root to:  "homes#top"
  resources :books, only:[:index,:show,:create,:edit,:update,:destroy] do
  resources :book_comments, only:[:create, :destroy]
 end
end
