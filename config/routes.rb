Rails.application.routes.draw do
  resources :jobs
  resources :job, only: [:create]

  root "dashboard#index"
end
