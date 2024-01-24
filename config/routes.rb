# frozen_string_literal: true
require 'sidekiq/web'

Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql' if Rails.env.development?
  post '/graphql', to: 'graphql#execute'

  mount Sidekiq::Web => "/sidekiq" # mount Sidekiq::Web in your Rails app
end
