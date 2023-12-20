Rails.application.routes.draw do
  get '/', to: 'static_pages#index'

  post '/jobs', to: 'jobs#create'
  get '/jobs/:id', to: 'jobs#show'
  get '/jobs', to: 'jobs#index'
end
