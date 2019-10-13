Rails.application.routes.draw do
  resources :reports, only: [:create, :index, :thanks]
  get 'thank_you' => 'reports#thank_you'
  root to: 'reports#index'
end
