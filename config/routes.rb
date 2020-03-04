Rails.application.routes.draw do

  
  namespace :api do 
    namespace :v1 do 
      resources :empresas
      resources :desarrollos
      resources :teles
      resources :politicas
    end
  end
end
