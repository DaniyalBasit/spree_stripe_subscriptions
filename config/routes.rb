Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :subscription_configs, only: [:index, :update]
  end
end
