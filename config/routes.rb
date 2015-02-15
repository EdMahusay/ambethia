Rails.application.routes.draw do

  namespace :public, path: nil do
    get 'scrap/:slug', to: 'scraps#show', as: 'scrap'
  end

  scope :a do
    resources :scraps
  end

  devise_for :users
  root 'home#index'
end
