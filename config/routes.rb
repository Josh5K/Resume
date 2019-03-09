Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: redirect('/resume/josh+king')
  get 'resume/:person', to: 'resume#index'
  get 'resume/:person/portfolio', to: 'portfolio#index'
end
