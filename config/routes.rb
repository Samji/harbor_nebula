Rails.application.routes.draw do
  root 'static_pages#home'
  get '/raid', to: 'raid#index'
  post 'raid', to: 'raid#index'
end

