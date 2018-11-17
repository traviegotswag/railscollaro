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
    root to: 'page#home'

    # Static pages
    get '/aboutus', to: 'page#aboutus'
    get '/howitworks', to: 'page#howitworks'
    get '/styleguide', to: 'page#styleguide'
    get '/nailingyourfit', to: 'page#nailingyourfit'
    
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
 