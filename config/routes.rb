Rails.application.routes.draw do
  namespace :cuenta do
    resources :cuenta_clientes
  end
  namespace :producto do
    resources :productos
      resources :umedidas
      resources :categorias
  end

  resources :clientes
  #get 'inicio/index'# optiene la ruta de inicio
  resources :articles do
  resources :comments 
  end


  root 'inicio#index'# optener la ruta de inicio en raiz 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
