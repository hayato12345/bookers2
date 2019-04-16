Rails.application.routes.draw do
  devise_for :users
  get 'top' => 'top#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end