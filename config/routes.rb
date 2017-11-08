Rails.application.routes.draw do
  resources :links, only: [:new, :create]
  get '/:id', to: 'links#show'
  root 'links#new'
end
