Rails.application.routes.draw do
  
  root to: "application#home"

  resources :books, only: [:index, :show, :new, :create]
end
