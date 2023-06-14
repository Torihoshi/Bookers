Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/top' => 'homes#top'
  root to: 'homes#top'  #アプリケーショントップ画面をルートパスに設定

  resources :books  #resources メソッド

  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'

end

#      Prefix Verb   URI Pattern                   Controller#Action

#         top GET    /top(.:format)                homes#top
#        root GET    /                             homes#top
#       books GET    /books(.:format)              books#index
#             POST   /books(.:format)              books#create
#    new_book GET    /books/new(.:format)          books#new
#   edit_book GET    /books/:id/edit(.:format)     books#edit
#        book GET    /books/:id(.:format)          books#show
#             PATCH  /books/:id(.:format)          books#update
#             PUT    /books/:id(.:format)          books#update
#             DELETE /books/:id(.:format)          books#destroy
# update_book PATCH  /books/:id(.:format)          books#update