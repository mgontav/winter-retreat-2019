# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'assign', to: 'assign#index', as: 'assign'
  get 'assign/:id', to: 'assign#show'
  get 'teams', to: 'teams#index', as: 'teams'
  get 'scores', to: 'scores#index', as: 'scores'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'scores#index'
end
