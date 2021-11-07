Rails.application.routes.draw do
  get 'home/about' => 'homes#about'
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:create, :index, :show, :destroy, :edit, :update]
  resources :users, only: [:show, :edit, :update, :index, :info]
end
