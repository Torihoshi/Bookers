Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/top' => 'homes#top'
  root to: 'homes#top'  #アプリケーショントップ画面をルートパスに設定

  resources :books  #resources メソッド



end
