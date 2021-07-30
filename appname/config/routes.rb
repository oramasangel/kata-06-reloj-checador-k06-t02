Rails.application.routes.draw do
  root to: "admin#index"
  resources :companies
  resources :employees
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "clearance/users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:edit, :update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html  
end
