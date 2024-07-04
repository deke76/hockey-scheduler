Rails.application.routes.draw do
  devise_for :users
  get 'pages/index'
  
  authenticated :user do
    root to: 'pages#index', as: :user_root
  end
  
  devise_scope :user do
    root to: 'devise/sessions#new'
  end
end
