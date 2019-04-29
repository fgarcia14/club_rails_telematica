Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Ruta Raiz
  root 'login#index'

  # Rutas GET
  get 'saludo', to: 'pantalla#saludo'
  get 'login', to: 'login#index'

  get 'main', to: 'main#index'
  get 'error', to: 'main#error'
  get 'logout', to: 'main#logout'

  #Rutas POST
  post 'validateLogin', to: 'login#validate'
end
