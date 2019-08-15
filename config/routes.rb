Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :missions do
    resources :candidatures, only: [:index, :new, :create, :show, :destroy, :update]
    :details_candidatures
  end
  get 'missions/:id/details_candidatures', to: 'missions#details_candidatures', as: :details_candidatures
  # get 'missions/:id/accept/:candidature_id', to: 'missions#details_candidatures', as: :accept_candidatures
  # get 'missions/:id/details_candidatures', to: 'missions#details_candidatures', as: :details_candidatures
  get 'dashboard', to: 'missions#dashboard', as: :missions_dashboard
  get 'dashboard/candidatures', to: 'candidatures#dashboard', as: :dashboard_candidatures
  # put 'missions/:mission_id/details_candidatures_validate/:id', to: 'candidatures#status_validate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


  # get 'missions/:mission_id/details_candidatures_validate/:id', to: 'candidatures#status_validate', as: :accepted_candidature
  # post 'missions/:mission_id/details_candidatures_validate/:id', to: 'candidatures#status_validate'
  # get 'missions/:id/details_candidatures_decline/:id', to: 'candidatures#status_decline', as: :declined_candidature
  # post 'missions/:id/details_candidatures_decline/:id', to: 'candidatures#status_decline'
