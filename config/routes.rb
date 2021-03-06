require 'api_constraints'
ApiRails::Application.routes.draw do
  # API definition
  namespace :api, defaults: { format: :json },
    constraints:{subdomain:'api'}, path: '/' do
      scope module: :v1,
      constraints: ApiConstraints.new(version: 1, default: true) do
        # We are going to list our resources here
      end
  end
end
