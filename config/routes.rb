require 'sidekiq/web'
Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  devise_for :users
   root to: 'rooms#show'
   mount ActionCable.server => '/cable'
end
