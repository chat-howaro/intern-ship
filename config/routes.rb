Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show] # ユーザーマイページへのルーティング
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'hello/index' => 'hello#index'
  get 'hello/link' => 'hello#link'
  root 'hello#index'

  resources :tweets do
   
    resources :comments, only: [:create,:destroy]
  
      devise_scope :user do
          get '/users/sign_out' => 'devise/sessions#destroy'
        
        
       end
    
  end
end

