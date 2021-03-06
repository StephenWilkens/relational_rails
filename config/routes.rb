Rails.application.routes.draw do
  get '/companies', to: 'companies#index'
  get '/companies/new', to: 'companies#new'
  get '/companies/:id', to: 'companies#show'
  post '/companies', to: 'companies#create'
  get '/companies/:id/edit', to: 'companies#edit'
  patch '/companies/:id/', to: 'companies#update'
  delete '/companies/:id', to: 'companies#destroy'

  get '/bikes', to: 'bikes#index'
  get '/bikes/:id', to: 'bikes#show'
  get '/bikes/:id/edit', to: 'bikes#edit'
  patch 'bikes/:id', to: 'bikes#update'
  delete '/bikes/:id', to: 'bikes#destroy'


  get '/companies/:id/bikes', to: 'company_bikes#index'
  get '/companies/:id/bikes/new', to: 'company_bikes#new'
  post '/companies/:id/bikes', to: 'company_bikes#create'
end
