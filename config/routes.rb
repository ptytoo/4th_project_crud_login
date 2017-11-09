Rails.application.routes.draw do
  root 'user#index' # == get '/' => 'user#index'
  get '/user/new'
  get '/user/create'
  get '/user/login'
  get '/user/login_process'
  
  
end
