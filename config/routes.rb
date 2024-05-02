Rails.application.routes.draw do
devise_for :users, path: :gurus, path_names: {sign_in: :login, sign_out: :logout}
 
 root to: 'tests#index'

  resources :tests, only: :index do
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
      post :gist
    end
  end
namespace :admin do 
  resources :gists
  resources :tests do
    patch :update_inline, on: :member
        resources :questions, shallow: true do
          resources :answers, shallow: true
        end
      end
end
end
