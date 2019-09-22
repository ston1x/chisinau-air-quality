# Configure your routes here
# See: https://guides.hanamirb.org/routing/overview
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
root to: 'reports#index'
post '/reports', to: 'reports#create', as: 'create_report'
get '/thank_you', to: 'reports#thank_you', as: 'thank_you'
