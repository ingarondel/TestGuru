Rails.application.routes.draw do
  get 'menu/show'
 root to: 'tests#index'

 get 'sessions/new'
 get 'users/new'


 get :signup, to: 'users#new'
 get :login, to: 'sessions#new'
 delete '/signout', to: 'sessions#destroy'

 resources :users, only: :create
 resources :sessions, only: %i[create destroy]

  resources :tests do
    resources :questions, shallow: true do 
      resources :answers, shallow: true
    end
    member do
      post :start 
    end
  end

  resources :test_passages, only: %i[show update] do  
    member do 
      get :result
    end
  end

end
