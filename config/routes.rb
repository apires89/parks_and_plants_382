Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [:create]
  end
  resources :plants, only: [:destroy] do
    resources :plant_tags, only: [:new,:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #TO NEST OR NOT TO NEST?
  #To create a new plant we need:
  # - Garden
  # - name
  # - image_url
end
