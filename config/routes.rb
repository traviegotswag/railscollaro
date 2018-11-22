Rails.application.routes.draw do

  devise_for :users 

  resources :users do
    resources :profiles, only: [:new, :create, :show, :edit, :update]
    resources :measurements
    # resources :styles, only: [:new, :create, :show, :edit, :update]
  end 

    # Home page
    root to: 'pages#home'

    # Static pages
    get '/aboutus', to: 'pages#aboutus'
    get '/howitworks', to: 'pages#howitworks'
    get '/styleguide', to: 'pages#styleguide'
    get '/nailingyourfit', to: 'pages#nailingyourfit'
  
    #Product page
    resources :products, only: [:index, :show], param: :name

    #Cart page
    resource :order, only: [:show]

    #Order items within cart/ SHOULD IT BE WITHIN USERS
    resources :order_items, only: [:create, :update, :destroy] 

    
  # Sorting functions
  # resources :fabrictypecategories, only: [:index] do
  #   resources :products, only: [:index]
  # end

  # resources :fabriccolorcategories, only: [:index] do
  #   resources :products, only: [:index]
  # end

  # resources :fabricbrandcategories, only: [:index] do
  #   resources :products, only: [:index]
  # end

  # resources :fabrictransparencycategories, only: [:index] do
  #   resources :products, only: [:index]
  # end
  
end
 