Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :missions do
    resources :candidatures, only: [:index, :new, :create, :show, :destroy]
    :details_candidatures
  end
  get 'missions/:id/details_candidatures', to: 'missions#details_candidatures'
  get 'dashboard', to: 'missions#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
