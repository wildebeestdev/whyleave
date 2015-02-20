Whyleave::Application.routes.draw do
  root "pages#locate_event"
  get "home", to: "pages#home", as: "home"
  get "inside", to: "pages#inside", as: "inside"
  get "/", to:"pages#locate_event"
  get "map", to: "pages#map", as: "map"
  
  devise_for :users

  namespace :admin do
    root "base#index"
    resources :users
    
  end

end
