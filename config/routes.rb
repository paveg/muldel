# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#index'

  get 'api-docs', to: 'api_docs#index'
  get '/delivery_companies', to: 'apis/v1/delivery_companies#index'
  mount GrapeSwaggerRails::Engine => '/swagger'
end
