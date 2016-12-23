Rails.application.routes.draw do
  resources :tasks do
    member do
      put :change
    end
  end
  devise_for :users
  get 'pages/home'
  get 'about' => 'pages#about'
  get 'test' => 'pages#test'
  root 'pages#home'
  get 'nganluong_94a51a851faa0342017fe5f993620d30' => 'pages#nganluong_94a51a851faa0342017fe5f993620d30'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
