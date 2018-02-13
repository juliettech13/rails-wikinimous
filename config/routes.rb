Rails.application.routes.draw do

  root to: 'articles#index'

  get 'articles', to: 'articles#index', as: :articles

  get 'articles/:id', to: 'articles#show', as: :article

  get 'articles/new', to: 'articles#new', as: :new

  post 'articles', to: 'articles#create', as: :create

  get 'articles/:id/edit', to: 'articles#edit', as: :edit

  patch 'articles/:id', to: 'articles#update', as: :update

  delete 'articles/:id', to: 'articles#destroy', as: :destroy

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


