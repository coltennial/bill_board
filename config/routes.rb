Rails.application.routes.draw do
  root 'boards#index'

  resources :boards do 
    resources :arts
  end 

  resources :arts do
    resources :songs 
  end
end
