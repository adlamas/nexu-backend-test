Rails.application.routes.draw do
  resources :models, only: %i[index update]
end
