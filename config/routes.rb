Rails.application.routes.draw do
  get '/companies', to: 'companies#index'
  get '/companies/:id', to: 'companies#show'
  get '/bikes', to: 'bikes#index'
  get '/bikes/:id', to: 'bikes#show'
end
