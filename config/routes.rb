Rails.application.routes.draw do
  root 'recipes#index'

  resources :ingredients
  resources :recipes do
    resources :required_ingredients, except: [:index, :show]
  end
  resources :units
  resources :unit_categories do
    resources :unit_conversions, except: [:index, :show]
  end


  devise_for :users, :controllers => {registrations: 'registrations'}
end
