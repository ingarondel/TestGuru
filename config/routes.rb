Rails.application.routes.draw do
  
 root to: 'tests#index'

 resources :tests  

 get '/tests/:category/:title', to: 'tests#search', level: 2

end
