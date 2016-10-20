Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => "/sidekiq"

  resources :pokemons
  post 'pokemons/report' => 'movies#report', as: :report

  root 'welcome#index'
end
