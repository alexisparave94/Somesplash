Rails.application.routes.draw do
  root "categories#index"

  # get 'categories', to: "categories#index"
  resources "categories"
  resources "photos", only: %i[show new edit]
end
