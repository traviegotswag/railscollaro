Rails.application.routes.draw do

  devise_for :users 

  resources :users do
    # index/show needed?
    resources :profiles, only: [:new, :create, :show, :edit, :update]
    resources :styles, only: [:new, :create, :show, :edit, :update]
    resources :measurements, only: [:new, :create, :show, :edit, :update]
    resources :orders, only: [:index, :create] do 
        resources :order_items
      end
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
 