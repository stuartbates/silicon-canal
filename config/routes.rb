SiliconCanal::Application.routes.draw do

  resources :people
  resources :companies

  root :to => "companies#index"
end
