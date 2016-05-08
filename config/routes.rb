Rails.application.routes.draw do  
  root 'home#index'
  get '/:Word' => 'home#index'
end
