Rails.application.routes.draw do
  get 'auctions/show'

  resources :auctions, only: :show

  root 'welcome#index'
end
