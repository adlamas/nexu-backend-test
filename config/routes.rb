Rails.application.routes.draw do
  resources :models, only: :index
end
