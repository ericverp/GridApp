Rails.application.routes.draw do
  get 'survey_results/show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "lighting_products#index"
  resources :lighting_products

  post '/survey', to: 'survey#survey'

  get 'survey_results/:id', to: 'survey_results#show'
end
