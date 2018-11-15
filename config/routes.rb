Rails.application.routes.draw do

    # devise_for :users
    root to: 'page#home'
  
    get '/aboutus', to: 'page#aboutus'
    get '/howitworks', to: 'page#howitworks'
    get '/styleguide', to: 'page#styleguide'
    get '/nailingyourfit', to: 'page#nailingyourfit'
  

  
end
 