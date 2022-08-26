Rails.application.routes.draw do
  root "categories#index"

  # get 'categories', to: "categories#index"
  resources "categories" do
    resources "comments", only: :create
  end
  resources "photos" do
    resources "comments", only: :create
  end

  resources "comments", only: :destroy

  get "/search", to: "photos#search"
  get "/search_photos", to: "photos#search_photos"
end
