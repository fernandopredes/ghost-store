Rails.application.routes.draw do
  resources :items, only: [:index, :show]
  resources :categories, only: [:index]
  get '/categories/:category_slug/items', to: 'items#show_by_category', as: 'category_items'
end

