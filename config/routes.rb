Rails.application.routes.draw do
resources :articles
resources :categories

  get "up" => "rails/health#show", as: :rails_health_check

  root "articles#index"
end
