# frozen_string_literal: true

Rails.application.routes.draw do
  scope '(:locale)', locale: /en|fr/ do
    get '/j-existe/about', to: 'public_pages/home#about'
    get '/j-existe/contact', to: 'public_pages/home#contact'
  end

  get '/:locale', to: 'public_pages/home#index'
  root to: 'public_pages/home#index'
end
