Rails.application.routes.draw do
  resources :reports, only: [:create, :index]
end
