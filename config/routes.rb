require 'sidekiq/web'

Rails.application.routes.draw do
  resources :profiles
  mount Sidekiq::Web => '/sidekiq'
  root to: 'profiles#profile_summary'
end
