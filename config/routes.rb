Rails.application.routes.draw do
  root 'static_pages#home'
  get '/raid', to: 'raid#index'
  post '/raid/create_faction', to: 'raid#create_faction', as: 'create_faction'
  post '/raid/create_rarity', to: 'raid#create_rarity', as: 'create_rarity'
end

