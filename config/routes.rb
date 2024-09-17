Rails.application.routes.draw do
  resources :models, only: %i[index update]
  resources :brands, only: %i[index create] do
    member do
      get 'models', to: 'brands#brand_models'
    end
  end
end
