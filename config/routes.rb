Rails.application.routes.draw do
  namespace :admin do
    resources :administradores
  end
  namespace :admin do
    resources :administradors
  end
  namespace :admin do
    resources :departamentos
  end
end
