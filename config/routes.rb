# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#index'
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show]
  end

  resources :posts do
    resources :comments, only: [:create]
    resources :likes, only: [:create]
  end
end
