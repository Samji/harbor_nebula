Rails.application.routes.draw do
  root 'static_pages#home'
  get '/raid', to: 'raid#index'
  post '/raid/create_faction', to: 'raid#create_faction', as: 'create_faction'
  post '/raid/create_rarity', to: 'raid#create_rarity', as: 'create_rarity'
  post '/raid/create_affinity', to: 'raid#create_affinity', as: 'create_affinity'
  post '/raid/create_role', to: 'raid#create_role', as: 'create_role'
  
  resources :raid_champions, only: [:index, :create]

  namespace :raid do
    resources :champions, param: :name, only: [:index, :show, :create, :destroy]
  end
end

