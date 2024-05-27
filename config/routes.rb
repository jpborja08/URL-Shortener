# frozen_string_literal: true

Rails.application.routes.draw do
  require "sidekiq/web"

  get '/urls', to: 'api/v1/short_urls#index'
  get '/:token', to: 'api/v1/short_urls#show', as: :short
  post '/shorten', to: 'api/v1/short_urls#shorten'
  delete '/:token', to: 'api/v1/short_urls#destroy'
  get '/fetch_original_url/*original_url', to: 'api/v1/short_urls#fetch_original_url', format: false

  Rails.application.routes.draw do
    mount Sidekiq::Web => "/sidekiq"
  end
end
