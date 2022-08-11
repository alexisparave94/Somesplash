Rails.application.routes.draw do
  root "categories#index"

  # get 'categories', to: "categories#index"
  resources "categories"
  resources "photos"
end
