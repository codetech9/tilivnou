Rails.application.routes.draw do
  get 'books/create'
  get 'books/new'
  get 'books/edit'
  get 'books/destroy'
  get 'books/update'
  get 'books/show'
  get 'books/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
