Rails.application.routes.draw do
  resources :articles
  resources :home
  devise_for :users
  root "home#index"

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get 'home/tag/:tag_name', to: 'home#index_by_tag', as: 'articles_by_tag'

  get 'home/show/:id', to: 'home#show', as: 'home_article'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
end
