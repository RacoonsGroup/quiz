Isaac::Engine.routes.draw do
  root to: 'tests#index'
  resources :tests
  resources :metrics
end
