Isaac::Engine.routes.draw do
  root to: 'tests#index'
  resources :tests do
    resources :results
  end
  resources :metrics
end
