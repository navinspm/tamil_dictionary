Rails.application.routes.draw do  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  match '/:Word' => 'dictionaries#index', via: [:get, :post]
  match '/' => 'dictionaries#index', via: [:get, :post]
  get '/dictionary/sitemap' => 'dictionaries#sitemap'
  resources :dictionaries, except: [:new,:edit,:create,:update,:delete] do
    get :autocomplete_dictionary_word, :on => :collection
  end
  root 'dictionaries#index'
end
