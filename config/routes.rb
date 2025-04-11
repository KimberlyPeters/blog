Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
  
  # Keep these separate routes if you still want standalone access to comments
  resources :comments, only: [:index, :show, :new, :create]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end