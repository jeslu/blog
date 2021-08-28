Rails.application.routes.draw do

  namespace :cuenta do
    #/cuenta/cuenta_clientes/
    resources :cuenta_clientes do
      #/cuenta/cuenta_clientes/:cuenta_cliente_id/cotizaciones
    resources :cotizaciones
    end
  end
  devise_for :users
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


  root to: 'inicio#index'# optener la ruta de inicio en raiz 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
