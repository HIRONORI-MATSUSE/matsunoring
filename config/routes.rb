Rails.application.routes.draw do
  get '/letters', to:'letters#index'
end
