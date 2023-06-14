Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/top' => 'homes#top'
  root to: 'homes#top'  #アプリケーショントップ画面をルートパスに設定

  resources :books  #resources メソッド

  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'


end

#GET    データの取得(ページ自体もデータ)
#POST   新しいデータの作成
#PUT    既存のデータの更新
#PATCH  既存のデータの一部更新
#DELETE 既存のデータを削除

#                        Prefix Verb   URI Pattern                    Controller#Action
  #                         top GET    /top(.:format)                 homes#top
  #                        root GET    /                              homes#top
   #                      books GET    /books(.:format)               books#index
   #                            POST   /books(.:format)               books#create
   #                   new_book GET    /books/new(.:format)           books#new
   #                  edit_book GET    /books/:id/edit(.:format)      books#edit
   #                       book GET    /books/:id(.:format)           books#show
   #                            PATCH  /books/:id(.:format)           books#update
   #                            PUT    /books/:id(.:format)           books#update
   #                            DELETE /books/:id(.:format)           books#destroy
   #                update_book PATCH  /books/:id(.:format)           books#update
   #               destroy_book DELETE /books/:id(.:format)           books#destroy