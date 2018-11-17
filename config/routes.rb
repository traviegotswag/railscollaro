Rails.application.routes.draw do

  devise_for :users 

  resources :users do
    # index/show needed?
    resources :profile, only: [:show, :update] 
    resources :style, only: [:show, :create, :edit]
    resources :measurement, only: [:show, :create, :edit]
    resources :order, only: [:index, :create] do 
        resources :productincart, only: [:index]
      end
  end 

    # Home page
    root to: 'pages#home'

    # Static pages
    get '/aboutus', to: 'pages#aboutus'
    get '/howitworks', to: 'pages#howitworks'
    get '/styleguide', to: 'pages#styleguide'
    get '/nailingyourfit', to: 'pages#nailingyourfit'
    
    resources :product, only: [:index, :show]

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
 