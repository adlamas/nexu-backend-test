Rails.application.routes.draw do
  resources :models, only: %i[index update]
  resources :brands, only: %i[index create]
end
