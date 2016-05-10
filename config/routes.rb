Rails.application.routes.draw do  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  match '/:Word' => 'dictionaries#index', via: [:get, :post]
  match '/' => 'dictionaries#index', via: [:get, :post]
  resources :dictionaries do
    get :autocomplete_dictionary_word, :on => :collection
  end
  root 'dictionaries#index'
end
