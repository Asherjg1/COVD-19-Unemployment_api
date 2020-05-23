Rails.application.routes.draw do
  require 'sidekiq/web'
  require 'sidekiq-scheduler/web'
  mount Sidekiq::Web => '/sidekiq'
  namespace :api, defaults: { format: :json } do
    resources 'companies'
  end
end
