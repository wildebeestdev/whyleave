Whyleave::Application.routes.draw do
  root "pages#home"
  get "home", to: "pages#home", as: "home"
  get "inside", to: "pages#inside", as: "inside"
  
  get "map", to: "pages#map", as: "map"
  
  devise_for :users

  namespace :admin do
    root "base#index"
    resources :users
    
  end

end
