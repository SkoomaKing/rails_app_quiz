Rails.application.routes.draw do
  get '/' => 'static_pages#index'

  post '/jobs' => 'jobs#create'
  get '/jobs/:id' => 'jobs#show'
  get '/jobs' => 'jobs#index'
end
