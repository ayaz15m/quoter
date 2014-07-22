Rails.application.routes.draw do
  root to: 'quote#index'

  get "/search" => "quote#search", as: :search

end
