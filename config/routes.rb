Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root 'static_pages#home'
    get  '/raid',  to: 'static_pages#raid_shadow_legends'
    get  '/eve',   to: 'static_pages#eve_online'
end
