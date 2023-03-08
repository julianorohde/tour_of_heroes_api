Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :heroes
    resources :powers
  end
end
