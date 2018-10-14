Rails.application.routes.draw do
  root to: 'tops#index'
   get '/tops', to:'tops#index'
   resources :blogs do
     collection do
   post :confirm
   resources :sessions, only: [:new, :create, :destroy]
   resources :users, only: [:new, :create, :show]
   end
  end
end