Rails.application.routes.draw do
  root to: "providers#index"

  devise_for :providers, skip: [:sign_up, :sign_out]
  devise_scope :provider do 
    get 'admin/register', to: 'devise/registrations#new'
    get 'admin/delete/:provider_id', to: 'devise/registrations#destroy'
    get 'sign_out', to: 'devise/sessions#destroy'
  end

  resources :providers, only: [:index, :show, :edit, :update] do
    resources :services, shallow: true
  end

  get 'admin', to: 'providers#admin_home'

  # get 'admin/register', to: 'devise/registrations#new'
  # get 'admin/login', to: 'devise/sessions#new'
  

  
end
