Rails.application.routes.draw do

  namespace :admin do
    resources :projetos
  end
  namespace :admin do
    resources :clientes
    resources :administradores
    resources :departamentos
  end

end
