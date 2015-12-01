Rails.application.routes.draw do
  devise_for :users
  root to: 'welcome#index'

  #components
  mount Isaac::Engine => "/isaac", as: 'isaac'
end
